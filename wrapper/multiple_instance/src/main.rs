use parameters::*;
use std::fs::{File};
use std::path::Path;
use std::io::{self, BufRead};

use wasmtime::*;
use wasi_common::WasiCtx;
use wasi_common::sync::*;
use anyhow;

/**
 * This is the orchestrator class, its purpose is to manage "nodes" as operators by telling which one has a task to do.
 * In this simplified version, it acts both as an orchestrator and as the intermediate program which receives and communicates information
 * to the wasm modules. However, we may considerate another layer for this to be cleaner.
 * In the case of native operators, it also has both roles: it tells which nodes to run which operation but also tells them
 * where to read data and write data. It also reads data as result from operations: using mmaped files - in real cases we would consider
 * also another layer where the operator has a global program which receives the data and executes the operator, however, here the data
 * is already available on the memory (the datasets) so the operator knows where to read, and since programs are running on the same machine
 * then it also knows where to write for the orchestrator (the client) to read data.
 */

 /*
  * ----------------------------------------------- Wasm part -----------------------------------------------
  */

// This is the main program of the orchestrator considering the operators are wasm modules.
fn main_wasm(path: &str, wasm_prg: &str) -> Result<()> {
    println!("Starting Program-Wrapper.");
    let engine = Engine::default();
    let mut linker = Linker::new(&engine);
    linker.allow_shadowing(true);

    // Add the WASI functions to the linker
    wasmtime_wasi::add_to_linker(&mut linker, |s| s)?;
    // à voir options

    // Create our module
    let module = Module::from_file(&engine, wasm_prg)?;

    // Create a WASI context with the preopened directory
    let wasi = WasiCtxBuilder::new()
        .inherit_stdio()
        .inherit_args()?.preopened_dir(Dir::from_std_file(std::fs::File::open(path)?), path)?
        .build();

    // Create a store which will manage the Wasm instances.
    let mut store = Store::new(&engine, wasi);
    // Create a new memory, with the maximum allowed size which is 4 GiB: 16484 * page size.
    let memory_type = MemoryType::new(1, Some(16384*4));
    Memory::new(&mut store, memory_type).unwrap(); // The memory is automatically linked to the store.

    // Add host functions to communicate with the memory : these are the center functions.

    /*
     * Function : Retrieve output in the memory from given pointer and capacity.
                  This function shouldn't be redefined for each as it passes in the capacity of the buffer.
     */
    linker
    .func_wrap(
        "host",
        "retrieve_output",
        move |mut caller: Caller<'_, WasiCtx>, ptr: i64, capacity: i32, size: i32| {
            let mem = match caller.get_export("memory") {
                Some(Extern::Memory(mem)) => mem,
                _ => anyhow::bail!("Failed to find host memory"),
            };
            let offset = ptr as u64 as usize;
            let mut buffer: Vec<u8> = vec![0; capacity as usize];
            let start = std::time::Instant::now();
            match mem.read(&caller, offset, &mut buffer) {
                Ok(()) => {
                    let end = start.elapsed().as_secs_f64();
                    println!("[Module] Time to read results from memory : {:?}s", end);
                    // println!("With {} rows.", size);
                    Ok(())
                },
                _ => anyhow::bail!("Failed to read from memory"),
            }
        },
    )
    .expect("should define the function");

    /*
     * For each dataset we link functions then instantiate and call the function.
     */
    for i in SCALE_FACTORS {
        let datasets_path = format!("{}/dataset.{}", path, i);
        // Read the datasets with size to allocate.
        // Eventually push a query.
        // buf.push_str("customer supplier nationkey hash");
        let mut buf: String = String::with_capacity(2 << 30); // 1 GiB TODO: see bigger

        /*
         * Read content into a buffer.
         */
        let start = std::time::Instant::now();
        let content_size = read_files_write_to_memory(&mut buf, &datasets_path).unwrap();
        let end = start.elapsed().as_secs_f64();
        println!("Time to read files and write to buffer from the orchestrator : {:?}s", end);
        println!("Content size: {}", content_size);
        println!("");

        // Add host functions to communicate with the memory : these are the center functions.
        /*
        * Function : Get memory size to allocate : it is the size of the datasets.
        */
        linker
            .func_wrap("host", "get_input_size", move || -> i64 {
                content_size // 1100693130 // ~ 1 GiB
            })
            .expect("get_input_size function defined.");

        /*
        * Function : Read input in the memory to location known by the Wasm module as a pointer.
        */
        linker.func_wrap(
            "host",
            "read_input",
            move |mut caller: Caller<'_, WasiCtx>, ptr: i64| {
                let mem = match caller.get_export("memory") {
                    Some(Extern::Memory(mem)) => mem,
                    _ => anyhow::bail!("Failed to find host memory"),
                };
                let offset = ptr as u64 as usize;
                let bytes = buf.as_bytes();
                let start = std::time::Instant::now();
                match mem.write(&mut caller, offset, bytes) {
                    Ok(_) => {
                        let end = start.elapsed().as_secs_f64();
                        println!("[Module] Time to write dataset {} to memory : {:?}s", i, end);
                    }
                    _ => anyhow::bail!("Failed to write to memory"),
                };
                Ok(())
            },
        )
        .expect("write_input function defined.");
        
        /*
        * Explicitly instantiate the Wasm module for a single use, then we dispose of it automatically at the end.
        */
        // println!("Instantiate module");
        let start = std::time::Instant::now();
        let instance = linker
            .instantiate(&mut store, &module).unwrap();
        let end = start.elapsed().as_secs_f64();
        println!("Time to instantiate the module : {:?}s", end);


        /**
         * Benchmarking the dataset.
         */
        println!("--- Benchmarking dataset.{} ---", i);
        // Explicit call to allocate_write_to_memory function which allocates memory and writes the datasets to the memory
        // retrieved from the Wasm instance.
        let start = std::time::Instant::now();
        let mean = 1;
        for _ in 0..MEAN_ALGORITHMS {
            match instance
            .get_export(&mut store, "benchmark_wasm_joins")
            .and_then(|e| e.into_func())
            .ok_or(0) {
                Ok(benchmark_wasm_joins) => {
                    let results = &mut [];
                    // Convert i to int with 02 being 2 and 1 being 10, temporary change.
                    let mut index: usize = i.parse().unwrap();
                    if !i.starts_with("0") {
                        println!("Index : {:?}", index);
                        index = 9 + index;
                    }
                    // index2 to i32
                    let index2: i32 = index.try_into().unwrap();
                    match benchmark_wasm_joins.call(&mut store, &[Val::I64(content_size as i64)], results) {
                        Ok(()) => {
                            let end = start.elapsed().as_secs_f64();
                            println!("Time elapsed during function benchmark_wasm_joins call : {:?}s", end);
                        },
                        Err(e) => {
                            println!("Error: {}", e);
                        }
                    }
                },
                Err(e) => {
                    println!("Error: {}", e);
                }
            }
        }
        let end = start.elapsed().as_secs_f64();
        println!("Time to call the function benchmark_wasm_joins {} times : {:?}s", mean, end/mean as f64);
        println!("--- End of benchmarking dataset ---\n");

        // linker.module(&mut store, "", &module)?; //: automatic instantiation, each call instantiates the module => impact on performance ?
        // linker
        //     .get_default(&mut store, "")
        //     .expect("should get the wasi runtime")
        //     .typed::<(), ()>(&store)
        //     .expect("should type the function")
        //     .call(&mut store, ())
        //     .expect("should call the function");
    }
    // For now we do specific needed calls for a given instance and then it automatically drops the instance.


    drop(store);
    Ok(())
}

// This function read files from dataset and writes it to the given memory of the wasm module.
fn read_files_write_to_memory(buf: &mut String, path: &str) -> Result<i64, i64> {
    let lineitem_path = Path::new(path).join("lineitem.tbl");
    let customer_path = Path::new(path).join("customer.tbl");
    let orders_path = Path::new(path).join("orders.tbl");
    let part_path = Path::new(path).join("part.tbl");
    let supplier_path = Path::new(path).join("supplier.tbl");
    let partsupp_path = Path::new(path).join("partsupp.tbl");
    let region_path = Path::new(path).join("region.tbl");
    let nation_path = Path::new(path).join("nation.tbl");

    // Keep the global offset
    let mut content_size: i64 = 0;
    let mut count = 0; // table count

    // Write the rows for each table.
    for file in vec![lineitem_path, customer_path, orders_path, nation_path, partsupp_path, region_path, part_path, supplier_path] {
        let file = File::open(&file).unwrap();
        for line in io::BufReader::new(file).lines() {
            let mut line = line.unwrap();
            // Append to line a newline character.
            line.push('\n');

            let str_bytes = line.as_bytes();
            let str_len = str_bytes.len();

            buf.push_str(&line);
            content_size += str_len as i64;
        }
        // Remove the last \n
        buf.pop();
        content_size -=1;
        
        // We begin a new table parse, we add a null terminating character.
        count += 1;
        if count < 8 {
            content_size += 1;
            buf.push('\r'); // new table
        }
    }
    buf.push('\0');
    content_size += 1;
    // println!("Tables written to memory.");

    Ok(content_size) // Return the offset as the size of the dataset.
}

fn read_files_write_to_memory_ptr(memory_ptr: *mut u8, path: &str) -> Result<i32, i32> {
    let lineitem_path = Path::new(path).join("lineitem.tbl");
    let customer_path = Path::new(path).join("customer.tbl");
    let orders_path = Path::new(path).join("orders.tbl");
    let part_path = Path::new(path).join("part.tbl");
    let supplier_path = Path::new(path).join("supplier.tbl");
    let partsupp_path = Path::new(path).join("partsupp.tbl");
    let region_path = Path::new(path).join("region.tbl");
    let nation_path = Path::new(path).join("nation.tbl");

    // Keep the global offset
    let mut content_size = 0;

    let mut memory_ptr = memory_ptr;
    let mut count = 0;

    // Write the rows for each table.
    for file in vec![lineitem_path, customer_path, orders_path, nation_path, partsupp_path, region_path, part_path, supplier_path] {
        let file = File::open(&file).unwrap();
        for line in io::BufReader::new(file).lines() {
            let mut line = line.unwrap();
            // Append to line a newline character.
            line.push('\n');

            let str_bytes = line.as_bytes();
            let str_len = str_bytes.len();

            unsafe {
                memory_ptr.copy_from(str_bytes.as_ptr(), str_len);
                memory_ptr = memory_ptr.offset(str_len as isize);
            }
            content_size += str_len;
        }
        // Remove the last \n
        content_size -=1;
        unsafe {
            memory_ptr = memory_ptr.offset(-1);
        }

        // We begin a new table parse, we add a null terminating character.
        count += 1;
        if count < 8 {
            unsafe {
                memory_ptr.write("\r".as_bytes()[0]);
                memory_ptr = memory_ptr.offset(1);
            }
            content_size += 1;
        }
    }
    unsafe {
        memory_ptr.write("\0".as_bytes()[0]);
    }
    // println!("Tables written to memory.");

    Ok(content_size as i32) // Return the offset as the size of the dataset.
}

// Main method to select dataset and choose which main method to run depending on the context.
fn main() {
    main_wasm("../../datasets", "multiple_instance.wasm");
    // main_native("./joins_native");
}