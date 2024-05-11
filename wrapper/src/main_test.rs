use std::fs::File;
use std::path::Path;
use std::process::{Command, Stdio};
use std::io::{self, BufRead, Read, Write};
use std::fs::OpenOptions;
use memmap;

use wasmtime::*;
use wasi_common::WasiCtx;
use wasi_common::sync::*;
use anyhow;

 /*
  * ----------------------------------------------- Wasm part -----------------------------------------------
  */

// This is the main program of the orchestrator considering the operators are wasm modules.
fn main_wasm(path: &str) -> Result<()> {
    println!("Starting Orchestrator...");
    let engine = Engine::default();
    let mut linker = Linker::new(&engine);

    // Add the WASI functions to the linker
    wasi_common::sync::add_to_linker(&mut linker, |s| s)?;

    // Create our module
    let module = Module::from_file(&engine, "joins.wasm")?;

    // Create a WASI context with the preopened directory
    let wasi = WasiCtxBuilder::new()
        .inherit_stdio()
        .inherit_args()?.preopened_dir(Dir::from_std_file(std::fs::File::open(path)?), path)?
        .build();

    // Create a store
    let mut store = Store::new(&engine, wasi);
    // Create memory : problem now with memory linking, we just grow the current memory
    let memory_type = MemoryType::new(1, Some(16384*4)); // 1 gigabyte for since 16384 pages are 64kb each
    let memory = Memory::new(&mut store, memory_type).unwrap();

    linker.module(&mut store, "", &module)?;

    let mem_size = 2147483647;

    // Add host functions to communicate with the memory
    linker
        .func_wrap("host", "get_input_size", move || -> i32 { mem_size })
        .expect("get_input_size function undefined");

    linker.func_wrap(
        "host",
        "get_input",
        move |mut caller: Caller<'_, WasiCtx>, ptr: i32| {
            let mem = match caller.get_export("memory") {
                Some(Extern::Memory(mem)) => mem,
                _ => anyhow::bail!("Failed to find host memory"),
            };
            let offset = ptr as u32 as usize;
            match mem.write(&mut caller, offset, "Hello, world!".as_bytes()) {
                Ok(_) => {}
                _ => anyhow::bail!("Failed to write to memory"),
            };
            Ok(())
        },
    )
    .expect("should define the function");

    // Define the memory in the linker
    // linker.define(
    //     &mut store,
    //     "host",
    //     "memory",
    //     memory,
    // )?;

    println!("Instantiate module");
    let instance = linker
        .instantiate(&mut store, &module).unwrap();

    // Get the memory, to make sure it works as expected
    let memory = instance
        .get_memory(&mut store, "memory").ok_or(0).unwrap();
    
    // We grow the memory to 200 pages, which is 12.8 megabytes.
    let previous_nb_pages = memory.grow(&mut store, 32000).unwrap();
    // println!("Previous number of pages: {}", previous_nb_pages);
    // Get the function allocate_int_array from the instance

    // let allocate_int_array = instance
    //     .get_func(&mut store, "allocate_int_array").ok_or(0).unwrap();

    let allocate_memory = instance.get_func(store, "allocate_memory").ok_or(0).unwrap();

    // Call the function allocate_int_array
    // let results = &mut [Val::I32(0)];
    // println!("Memory size3 : {}", memory.size(&mut store));
    // allocate_int_array.call(&mut store, &[Val::I32(2098266112-10)], results).unwrap();
    // let ptr = results[0].unwrap_i32() as *mut u8;
    
    // Print memory size here.
    println!("Memory size2: {}", memory.size(&mut store));
    
    // Write to the memory
    let memory_data = memory.data_mut(&mut store);
    let mut memory_ptr = memory_data.as_mut_ptr();
    let mem_size = memory_data.len();

    // Get the memory point to the allocated area.
    unsafe {
        memory_ptr = memory_ptr.offset(ptr as isize);
    }
    // Ensure enough space in memory
    if mem_size < 20*65536 { // Let us assume we need 20 pages of memory.
        println!("Not enough space in memory to write string.");
    } else { // all code below should be here if no return
        // Print memory size
        println!("Memory size: {}", memory_data.len());
        // Write the string bytes into memory
        // In order to write as slices from the ptr we need to use unsafe code.
        println!("ptr: {:p}", ptr);
        // unsafe {
        //     memory_ptr.copy_from("Hello world!".as_ptr(), "Hello world!".len());
        //     for i in 0..20200000 {
        //         memory_ptr.offset(i).write("a".as_bytes()[0]);
        //     }
        // }
        // ptr.copy_from(str_bytes.as_ptr(), str_bytes.len());
        // read_files_write_to_memory(memory_ptr, path).unwrap();
        // let res = &memory_data[ptr as usize..ptr as usize + 100];
        // println!("Result: {:?}", res);
    }

    // Get the deallocate_int_array function from the instance
    let deallocate_int_array = instance
        .get_func(&mut store, "deallocate_int_array").ok_or(0).unwrap();

    // Call the function deallocate_int_array
    

    // Test parse.
    // First we write the join query to memory.
    let query = "customer supplier nationkey hash"; // It is a join between customer and supplier on nationkey with a hash join.
    let query_len = query.len();
    let mut memory_clone = memory_ptr.clone();
    unsafe {
        memory_ptr.copy_from(query.as_ptr(), query_len);
        memory_clone = memory_clone.offset((query_len + 1) as isize);
    }
    println!("memory_ptr1: {:p}", memory_ptr);
    // We write the tables to memory and perform the join operator.
    let start = std::time::Instant::now();
    match read_files_write_to_memory(memory_clone, path) {
        Ok(size) => {
            let end = start.elapsed();
            println!("-> Time to read from files and write to memory: {:?}\n", end);
            // println!("memory_ptr: {:p}", memory_ptr);
            println!("Dataset size: {}\n", size);

            match instance
            .get_export(&mut store, "operate_wasm_join")
            .and_then(|e| e.into_func())
            .ok_or(0) {
                Ok(operate_join) => {
                    let results = &mut [Val::I32(0)];
                    match operate_join.call(&mut store, &[Val::I32(ptr as i32), Val::I32(query_len as i32), Val::I32(size)], results) {
                        Ok(()) => {
                            let offset = results[0].unwrap_i32();
                            if offset > 0 {
                                let memory_data = memory.data_mut(&mut store);
                                
                                let start = std::time::Instant::now();
                                let result = std::str::from_utf8(&memory_data[(ptr as usize)..((ptr as usize) + offset as usize)]).unwrap();
                                let end = std::time::Instant::now();
                                println!("-> Time to read from memory and convert to string the results: {:?}\n", end.duration_since(start));

                                println!("The result has {} entries.", result.split("\n").count());
                            } else {
                                println!("Empty result.");
                            }
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
        },
        Err(e) => {
            println!("Error: {}", e);
        }
    }

    // Free memory.
    deallocate_int_array.call(&mut store, &[Val::I32(ptr as i32), Val::I32(2147483647 as i32)], &mut []).unwrap();
    drop(store);
    Ok(())
}

// This function read files from dataset and writes it to the given memory of the wasm module.
fn read_files_write_to_memory(memory_ptr: *mut u8, path: &str) -> Result<i32, i32> {
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
    println!("Tables written to memory.");

    Ok(content_size as i32) // Return the offset as the size of the dataset.
}

 /*
  * ----------------------------------------------- Native part -----------------------------------------------
  */

// This function reads files from dataset and writes the content to a given file.
fn read_files(prog: &mut std::process::Child, path: &str) {
    let lineitem_path = Path::new(path).join("lineitem.tbl");
    let customer_path = Path::new(path).join("customer.tbl");
    let orders_path = Path::new(path).join("orders.tbl");
    let part_path = Path::new(path).join("part.tbl");
    let supplier_path = Path::new(path).join("supplier.tbl");
    let partsupp_path = Path::new(path).join("partsupp.tbl");
    let region_path = Path::new(path).join("region.tbl");
    let nation_path = Path::new(path).join("nation.tbl");
   
    let mut stdin = prog.stdin.take().unwrap();

    let lineitem_file = File::open(&lineitem_path).unwrap();
    for line in io::BufReader::new(lineitem_file).lines() {
        let line = line;
        
        stdin
            .write_all(line.unwrap().as_bytes())
            .expect("Failed to write to stdin");
    }

    let customer_file = File::open(&customer_path).unwrap();
    for line in io::BufReader::new(customer_file).lines() {
        let line = line;
        
        stdin
            .write_all(line.unwrap().as_bytes())
            .expect("Failed to write to stdin");
    }

    stdin
        .write_all(b"\n")
        .expect("Failed to write to stdin");

    let orders_file = File::open(&orders_path).unwrap();
    for line in io::BufReader::new(orders_file).lines() {
        let line = line;
        
        stdin
            .write_all(line.unwrap().as_bytes())
            .expect("Failed to write to stdin");
    }

    stdin
        .write_all(b"\n")
        .expect("Failed to write to stdin");

    let nation_file = File::open(&nation_path).unwrap();
    for line in io::BufReader::new(nation_file).lines() {
        let line = line;

        stdin
                .write_all(line.unwrap().as_bytes())
                .expect("Failed to write to stdin");
    }

    stdin
        .write_all(b"\n")
        .expect("Failed to write to stdin");

    let partsupp_file = File::open(&partsupp_path).unwrap();
    for line in io::BufReader::new(partsupp_file).lines() {
        let line = line;
        
        stdin
            .write_all(line.unwrap().as_bytes())
            .expect("Failed to write to stdin");
    }

    stdin
        .write_all(b"\n")
        .expect("Failed to write to stdin");

    let region_file = File::open(&region_path).unwrap();
    for line in io::BufReader::new(region_file).lines() {
        let line = line;
        
        stdin
            .write_all(line.unwrap().as_bytes())
            .expect("Failed to write to stdin");
    }

    stdin
        .write_all(b"\n")
        .expect("Failed to write to stdin");

    let part_file = File::open(&part_path).unwrap();
    for line in io::BufReader::new(part_file).lines() {
        let line = line;
        
        stdin
            .write_all(line.unwrap().as_bytes())
            .expect("Failed to write to stdin");
    }

    stdin
        .write_all(b"\n")
        .expect("Failed to write to stdin");

    let supplier_file = File::open(&supplier_path).unwrap();
    for line in io::BufReader::new(supplier_file).lines() {
        let line = line;
        
        stdin
            .write_all(line.unwrap().as_bytes())
            .expect("Failed to write to stdin");
    }
}

// This is the main function of the orchestrator considering operators are native programs, we consider more traditional way of communication.
fn main_native(path: &str) {
    
    // Mmap files and write to memory
    let mut file = OpenOptions::new()
    .read(true)
    .write(true)
    .create(true)
    .open("/tmp/shared_memory")
    .unwrap();

    file.set_len(1073741824).unwrap();

    let mut data = unsafe {
    memmap::MmapOptions::new()
            .map_mut(&file)
            .expect("Could not access data from memory mapped file")
    };

    // Write query to file.
    let query = "customer supplier nationkey hash"; // It is a join between customer and supplier on nationkey with a hash join.
    let query_len = query.len();
    let mut memory_ptr = data.as_mut_ptr();
    unsafe {
        memory_ptr.copy_from(query.as_ptr(), query_len);
        memory_ptr = memory_ptr.offset((query_len + 1) as isize);
    }

    // Write dataset to file.
    let content_size = read_files_write_to_memory(memory_ptr, path).unwrap();
    println!("Shared memory file size: {}", content_size + query_len as i32 + 1);
    file.set_len((content_size + query_len as i32 + 1) as u64).unwrap();
    data.flush().unwrap();
    
    // Instantiate the program with the arguments.
    // query len to string to pass as argument
    
    let args = ["/tmp/shared_memory", &query_len.to_string()];
    let mut prog = Command::new("../../joins/target/debug/joins")
    .args(&args)
    .spawn()
    .expect("Failed to run program.");

    let status = prog.wait().expect("Failed to wait on program.");
    println!("Child process exited with: {}", status);

    // Read from file and print the result.
    let mut result = &mut String::new();
    file.read_to_string(&mut result).unwrap();
    println!("The result has {} entries.", result.split("\n").count());
    // yes or no to continue
    let mut input = String::new();
    println!("Do you want to see the result? (yes/no)");
    io::stdin().read_line(&mut input).unwrap();
    if input.trim() == "yes" {
        println!("Result: {}", result)
    } else {
        println!("Exiting...");
    }
}

// Main method to select dataset and choose which main method to run depending on the context.
fn main() {

    let mut path = "/home/csok/Documents/M1_SIF/project/code/joins/target/release/dataset.2";

    // Scan input as first arg if provided
    let args: Vec<String> = std::env::args().collect();
    if args.len() > 1 {
        path = &args[1];
    }

    main_wasm(path);
    // main_native(path);
}