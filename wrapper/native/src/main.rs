use parameters::*;
use std::env::temp_dir;
use std::fs::{self, File};
use std::path::Path;
use std::process::{Command, Stdio};
use std::io::{self, BufRead, Read, Seek, Write};
use std::fs::OpenOptions;

/**
 * This is the native environment (Env. 1) which manages the execution of a native join operation in Rust.
 * Both data reading and writing are done in this class.
 */

/*
 * Utility function to read TPC-H based data files and write them to a given String buffer.
 */
fn read_files_write_to_memory(buf: &mut String, path: &str) -> Result<i32, i32> {
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
            content_size += str_len;
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

    Ok(content_size as i32) // Return the offset as the size of the dataset.
}

/*
 * This function reads files from dataset and writes the content to a given byte buffer as a pointer.
 */
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

// This is the main function of the orchestrator considering operators are native programs, we consider more traditional way of communication.
fn main_native(dir: &str) {
    
    for i in SCALE_FACTORS {
        println!("--- Benchmarking dataset.{} ---", i);
        
        // This wrapper program serves only to automate more practically the launch of native operators
        // all time measurements are done internally with the native operator. This directly
        // ensures that time measurements are not biased by any fork exec processing and  thus this wrapper program allows
        // to manage more easily the means through data collection of the native operator launches.
        
        // Instantiate the program with the arguments.
        
        let args = [&dir.to_string()];
        let start = std::time::Instant::now();
        let end = start.elapsed().as_secs_f64();
        println!("--- End of benchmarking dataset.{} ---\n", i);

        fs::remove_file(dir).unwrap();
    }
}

// Main method to select dataset and choose which main method to run depending on the context.
fn main() {
    // main_wasm(".");
    main_native("./joins_native");
}