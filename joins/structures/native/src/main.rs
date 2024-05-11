use joins::*;
use std::alloc::{alloc, dealloc, Layout};
use std::io::{self, Read, Write};
// Use of memmap is not supported in Wasm yet, to comment when compiling to wasm.
// use std::io::Seek;ls
// use std::fs::OpenOptions;
// use memmap;

// Commands

// Building commands
// cargo build --target wasm32-wasi
// cargo build

// Executing commands
// wasmtime --dir=path joins.wasm path
// ./joins path

/*
 This function is the classic join operation function, used as a serverless operator.
 It writes into the wasm module's memory and returns the length of the result. The writing is done at the beginning of the memory.
*/
// #[no_mangle]
// pub extern "C" fn operate_wasm_join(offset: usize, query_len: usize, len: usize) -> usize {
//     // We first read the join query at the offset.
//     let join_query = lib::read_string_from_memory(offset, query_len);
//     println!("Join query from memory: {}", join_query);
//     // It terminates with a \0 character, we need to remove it.
//     let join_query = join_query.trim_end_matches('\0');

//     // Let us retrieve the first and second tables as well as the join attribute.
//     let mut split = join_query.split(" ");
//     let first_table = match split.next().unwrap() {
//         "customer" => 0,
//         "nation" => 1,
//         "partsupp" => 2,
//         "region" => 3,
//         "lineitem" => 4,
//         "orders" => 5,
//         "part" => 6,
//         "supplier" => 7,
//         _ => panic!("Unknown table:"),
//     };
//     let second_table = match split.next().unwrap() {
//         "customer" => 0,
//         "nation" => 1,
//         "partsupp" => 2,
//         "region" => 3,
//         "lineitem" => 4,
//         "orders" => 5,
//         "part" => 6,
//         "supplier" => 7,
//         _ => panic!("Unknown table:"),
//     };
//     let join_attribute = split.next().unwrap();
//     let join_type = match split.next().unwrap() {
//         "hash" => JoinType::Hash,
//         "nested" => JoinType::NestedLoop,
//         "sorted_merge" => JoinType::SortMerge, 
//         _ => panic!("Unknown join type:"),
//     };

//     // We now shift the offset.
//     let mut offset = offset + query_len + 1;

//     // In order to create the join query, we read the tables from the memory.
//     let start = std::time::Instant::now();
//     match lib::parse_wasm_dataset(offset, len) {
//         Ok((customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table)) => {
//             let duration = start.elapsed();
//             println!("-> Time elapsed reading and parsing data: {:?}s\n", duration.as_secs_f64());
//             // Now we create the join query
//             let join_query = lib::JoinQuery {
//                 table1_idx: first_table,
//                 table2_idx: second_table,
//                 attribute: join_attribute.to_string()
//             };

//             let tables = [customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table];

//             // Benchmark the join
//             let (duration, (mut join_result, entries)) = benchmark_join(&join_query, &tables, &join_type, true);
//             println!("-> Time elapsed in join: {:?}s\n", duration.as_secs_f64());

//             // We now write the result to the memory.
//             let start = std::time::Instant::now();
//             // We first check if the join result is empty.
//             if join_result.is_empty() {
//                 return 0;
//             } else {
//                 // We now format the result, each tuple (i, j) is a join between row i of table 1 and row j of table 2.
//                 // We will write rows directly in the memory which are from the tables.
//                 for (i, j) in join_result {
//                     // We first write the row i of table 1.
//                     // And then the row j of table 2. As such, we perform a classic inner join.
//                     let table1 = &tables[first_table];
//                     let row1 = lib::unparse_line(table1.name.as_ref(), &table1.rows[i]);
//                     let row1 = format!("{}\n", row1);
//                     lib::write_string_to_memory(offset, row1.as_str());
//                     offset += row1.len();
//                     let table2 = &tables[second_table];
//                     let row2 = lib::unparse_line(table2.name.as_ref(), &table2.rows[j]);
//                     let row2 = format!("{}\n", row2);
//                     lib::write_string_to_memory(offset, row2.as_str());
//                     offset += row2.len();
//                 }
//                 // We want the last character to be a \0 character.
//                 lib::write_string_to_memory(offset-1, "\r");
//             }
//             let duration = start.elapsed();
//             println!("-> Time elapsed in writing data to memory: {:?}s\n", duration.as_secs_f64());
//         }
//         Err(err) => eprintln!("Error: {:?}", err),
//     }
//     println!("Operation done.");
//     offset
// }

// fn operate_join(data: String, query_len: usize, output: &mut std::fs::File) {
//     // We first read the join query at the offset.
//     let join_query = data[0..query_len].to_string();
//     println!("Join query from memory: {}", join_query);
//     // It terminates with a \0 character, we need to remove it.
//     let join_query = join_query.trim_end_matches('\0');
//     // Let us retrieve the first and second tables as well as the join attribute.
//     let mut split = join_query.split(" ");
//     let first_table = match split.next().unwrap() {
//         "customer" => 0,
//         "nation" => 1,
//         "partsupp" => 2,
//         "region" => 3,
//         "lineitem" => 4,
//         "orders" => 5,
//         "part" => 6,
//         "supplier" => 7,
//         _ => panic!("Unknown table:"),
//     };
//     let second_table = match split.next().unwrap() {
//         "customer" => 0,
//         "nation" => 1,
//         "partsupp" => 2,
//         "region" => 3,
//         "lineitem" => 4,
//         "orders" => 5,
//         "part" => 6,
//         "supplier" => 7,
//         _ => panic!("Unknown table:"),
//     };
//     let join_attribute = split.next().unwrap();
//     let join_type = match split.next().unwrap() {
//         "hash" => JoinType::Hash,
//         "nested" => JoinType::NestedLoop,
//         "sorted_merge" => JoinType::SortMerge, 
//         _ => panic!("Unknown join type:"),
//     };

//     // In order to create the join query, we read the tables from the memory.
//     let start = std::time::Instant::now();
//     match parse_dataset(data[query_len+1..].to_string()) {
//         Ok((customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table)) => {
//             let duration = start.elapsed();
//             println!("-> Time elapsed parsing data: {:?}s\n", duration.as_secs_f64());
//             // Now we create the join query
//             let join_query = lib::JoinQuery {
//                 table1_idx: first_table,
//                 table2_idx: second_table,
//                 attribute: join_attribute.to_string()
//             };

//             let tables = [customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table];

//             // Benchmark the join
//             let (duration, (mut join_result, entries)) = benchmark_join(&join_query, &tables, &join_type, true);
//             println!("-> Time elapsed in join: {:?}s\n", duration.as_secs_f64());

//             // We now write the result to the memory.
//             let start = std::time::Instant::now();
//             // We first check if the join result is empty.
//             if join_result.is_empty() {
//                 return;
//             } else {
//                 // We now format the result, each tuple (i, j) is a join between row i of table 1 and row j of table 2.
//                 // We will write rows directly in the memory which are from the tables.
//                 // Buffer string
//                 let mut buffer = String::new();
//                 for (i, j) in join_result {
//                     // We first write the row i of table 1.
//                     // And then the row j of table 2. As such, we perform a classic inner join.
//                     let table1 = &tables[first_table];
//                     let row1 = lib::unparse_line(table1.name.as_ref(), &table1.rows[i]);
//                     let row1 = format!("{}\n", row1);
//                     buffer.push_str(row1.as_str());
//                     let table2 = &tables[second_table];
//                     let row2 = lib::unparse_line(table2.name.as_ref(), &table2.rows[j]);
//                     let row2 = format!("{}\n", row2);
//                     buffer.push_str(row2.as_str());
//                 }
//                 buffer.push_str("\0");
//                 output.set_len(buffer.len() as u64).unwrap();
//                 // Write to the file
//                 match output.write(buffer.as_bytes()) {
//                     Ok(_) => {},
//                     Err(err) => eprintln!("Error while writing: {:?}", err),
//                 }
//                 output.flush().unwrap();
//             }
//             let duration = start.elapsed();
//             println!("-> Time elapsed in writing data to memory: {:?}s\n", duration.as_secs_f64());
//         }
//         Err(err) => eprintln!("Error: {:?}", err),
//     }

// }

/*
   Wasm multiple instance program, we consider the wasm module as a serverless operator.
   Since we do not use dynamic relinking we hardcode the different datasets for now.
   For more general use, we would need to consider a fixed size buffer for the input.
*/

#[link(wasm_import_module = "host")]
extern "C" {
    fn read_input_01(ptr: i32);
    fn read_input_02(ptr: i32);
    fn read_input_03(ptr: i32);
    fn read_input_04(ptr: i32);
    fn read_input_05(ptr: i32);
    fn read_input_06(ptr: i32);
    fn read_input_07(ptr: i32);
    fn read_input_08(ptr: i32);
    fn read_input_09(ptr: i32);
    fn read_input_1(ptr: i32);
    fn retrieve_output(ptr: i32, size: i32, entries: i32);
}

#[no_mangle]
pub extern "C" fn benchmark_wasm_joins(dataset: i32, input_size: i32) -> () {
    // Allocate memory with given input size.
    println!("Working on dataset {} with input size {}.", dataset, input_size);
    let mem_size = input_size;

    // to check about memory up to 4GB. it seems quite complicated.
    let mut buf: Vec<u8> = Vec::with_capacity(mem_size as usize);
    let ptr = buf.as_mut_ptr();
    std::mem::forget(ptr); // ?

    // Read input from host.
    let input = unsafe {
        match dataset {
            1 => read_input_01(ptr as i32),
            2 => read_input_02(ptr as i32),
            3 => read_input_03(ptr as i32),
            4 => read_input_04(ptr as i32),
            5 => read_input_05(ptr as i32),
            6 => read_input_06(ptr as i32),
            7 => read_input_07(ptr as i32),
            8 => read_input_08(ptr as i32),
            9 => read_input_09(ptr as i32),
            10 => read_input_1(ptr as i32),
            _ => panic!("Unknown dataset"),
        }
        // read_input(ptr as i32); FOR ONE WASM INSTANCE
        Vec::from_raw_parts(ptr, mem_size as usize, mem_size as usize)
    };
    // let input_size = input.len();
    // println!("input size = {:?}", input_size);

    let start = std::time::Instant::now();
    let data = String::from_utf8(input).unwrap();
    let duration = start.elapsed();
    println!("-> Time elapsed convert data bytes to String: {:?}s\n", duration.as_secs_f64());

    // Computing join
    let start = std::time::Instant::now();
    benchmark(data, true, false);
    let duration = start.elapsed();
    println!("-> Time elapsed in benchmarking: {:?}s\n", duration.as_secs_f64());
}


// The same generic function below but reading from a path.
// fn test_joins(path: &str, yield_result: bool, debug: bool) {
//     println!("Working on files from: {}", path);
//     println!("Parsing begins.");

//     // Time the parsing operation
//     let start = std::time::Instant::now();
//     match parse_read(path) {
//         Ok((customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table)) => {
//             let duration = start.elapsed();
//             println!("-> Time elapsed in parsing: {:?}s\n", duration.as_secs_f64());
//             if debug {
//                 println!("Size of the tables : customer: {}, nation: {}, partsupp: {}, region: {}, lineitem: {}, orders: {}, part: {}, supplier: {}", customer_table.rows.len(), nation_table.rows.len(), partsupp_table.rows.len(), region_table.rows.len(), lineitem_table.rows.len(), orders_table.rows.len(), part_table.rows.len(), supplier_table.rows.len());
//             }

//             // Perform different joins on all the tables
//             let tables = [customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table];
            
//             // Loop on hardcoded queries
//             let join_queries = &get_join_queries();
//             for join_type in [JoinType::NestedLoop, JoinType::Hash, JoinType::SortMerge].iter() {
//                 let mut results: Vec<(i32, f64, usize, usize, i32)> = Vec::new();
//                 let start2 = std::time::Instant::now();
//                 println!("-----------------------------------");
//                 println!("[{:?}]", join_type);
                
//                 let mean = 10;
//                 let mut join_query_id = 0;
//                 for join_query in join_queries {
//                     // Benchmark the join, we make a mean of 10 runs.
//                     let mut durations : f64 = 0.0;
//                     let mut join_result = 0;
//                     if debug {
//                         println!("Performing query: SELECT * FROM {} JOIN {} ON {}.{} = {}.{};", tables[join_query.table1_idx].name, tables[join_query.table2_idx].name, tables[join_query.table1_idx].name, join_query.attribute, tables[join_query.table2_idx].name, join_query.attribute);
//                     }
//                     for _ in 0..mean {
//                         let (duration, (_, entries)) = benchmark_join(&join_query, &tables, &join_type, yield_result);
//                         join_result = entries; // It should be the same result for all the tests.
//                         durations += duration.as_secs_f64();
//                     }
//                     durations /= mean as f64;
//                     if debug {
//                         println!("With a total of {} rows.", join_result);
//                         println!("-> Time elapsed in join (mean on {} runs): {:?}s\n", mean, durations);
//                     }
//                     results.push((join_query_id, durations, tables[join_query.table1_idx].rows.len(), tables[join_query.table2_idx].rows.len(), join_result));
//                     join_query_id += 1;
//                 }
//                 println!("Results : {:?}", results);
//                 if debug {
//                     println!("-> Time elapsed for all the queries for this join (considering all the runs): {:?}s\n", start2.elapsed().as_secs_f64());
//                 }
//             }
//         }
//         Err(err) => eprintln!("Error: {:?}", err),
//     }
// }

// Same as test joins but used from the orchestrator.
fn benchmark(data: String, yield_result: bool, debug: bool) {
    // Perform different joins on all the tables
    let start = std::time::Instant::now();
    match parse_dataset(data) {
        Ok((customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table)) => {
            let duration = start.elapsed();
            println!("-> Time elapsed in parsing: {:?}s\n", duration.as_secs_f64());

            // Perform different joins on all the tables
            let tables = [customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table];
        
            // Loop on hardcoded queries
            let join_queries = &get_join_queries();
            for join_type in [JoinType::NestedLoop, JoinType::Hash, JoinType::SortMerge].iter() {
                let mut results: Vec<(i32, f64, usize, usize, i32)> = Vec::new();
                let start2 = std::time::Instant::now();
                println!("-----------------------------------");
                println!("[{:?}]", join_type);
                
                let mean = 3;
                let mut join_query_id = 0;
                for join_query in join_queries {
                    // Benchmark the join, we make a mean of 10 runs.
                    let mut durations : f64 = 0.0;
                    let mut join_result = 0;
                    if debug {
                        println!("Performing query: SELECT * FROM {} JOIN {} ON {}.{} = {}.{};", tables[join_query.table1_idx].name, tables[join_query.table2_idx].name, tables[join_query.table1_idx].name, join_query.attribute, tables[join_query.table2_idx].name, join_query.attribute);
                    }
                    for i in 0..mean {
                        let (duration, (rows, entries, len)) = benchmark_join(&join_query, &tables, &join_type, yield_result);
                        if i == mean - 1 {
                            // For the last run, we write the results.
                            // Retrieve output, basically it tells the host to read the memory.
                            // For now, we directly pass in the vec of rows but we would need to serialize it to have a readable result.
                            let ptr = rows.as_ptr();
                            std::mem::forget(ptr);
                            unsafe {
                                retrieve_output(ptr as i32, len, entries);
                            }
                        }
                        join_result = entries; // It should be the same result for all the tests.
                        durations += duration.as_secs_f64();
                    }
                    durations /= mean as f64;
                    if debug {
                        println!("With a total of {} rows.", join_result);
                        println!("-> Time elapsed in join (mean on {} runs): {:?}s\n", mean, durations);
                    }
                    results.push((join_query_id, durations, tables[join_query.table1_idx].rows.len(), tables[join_query.table2_idx].rows.len(), join_result));
                    join_query_id += 1;
                }
                println!("Results : {:?}", results);
                if debug {
                    println!("-> Time elapsed for all the queries for this join (considering all the runs): {:?}s\n", start2.elapsed().as_secs_f64());
                }
            }
        },
        Err(err) => eprintln!("Error: {:?}", err),
    }
}

// Generic function to read and benchmark the join operation.
// fn read_and_benchmark(offset: usize, len: usize) {
//     println!("Working on files from memory.");
//     println!("Parsing begins.");

//     // First get the tables
//     // Time the parsing operation
//     let start = std::time::Instant::now();
//     match lib::parse_wasm_dataset(offset, len) {
//         Ok((customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table)) => {
//             let duration = start.elapsed();
//             println!("-> Time elapsed in parsing: {:?}s\n", duration.as_secs_f64());

//             // Perform different joins on all the tables
//             let tables = [customer_table, nation_table, partsupp_table, region_table, lineitem_table, orders_table, part_table, supplier_table];
            
//             // Loop on hardcoded queries
//             let join_queries = &get_join_queries();
//             for join_type in [JoinType::NestedLoop, JoinType::Hash, JoinType::SortMerge].iter() {
//                 let mut results: Vec<(i32, f64, usize, usize)> = Vec::new();
//                 let start2 = std::time::Instant::now();
//                 println!("-----------------------------------");
//                 println!("[{:?}]", join_type);
                
//                 let mean = 3;
//                 let mut join_query_id = 0;
//                 for join_query in join_queries {
//                     // Benchmark the join, we make a mean of 10 runs.
//                     let mut durations : f64 = 0.0;
//                     let mut join_result = 0;
//                     for _ in 0..mean {
//                         let (duration, (mut result, entries)) = benchmark_join(&join_query, &tables, &join_type, false);
//                         join_result = entries; // It should be the same result for all the tests.
//                         durations += duration.as_secs_f64();
//                     }
//                     durations /= mean as f64;
//                     results.push((join_query_id, durations, tables[join_query.table1_idx].rows.len(), tables[join_query.table2_idx].rows.len()));
//                     join_query_id += 1;
//                 }
//                 println!("Results : {:?}", results);
//             }
//         }
//         Err(err) => eprintln!("Error: {:?}", err),
//     }
// }

fn main() -> Result<(), ()> {
    // println!("start");
    // for i in ["2", "3", "39"] {
    //     let path = format!("dataset.{}", i);
    //     test_joins(&path, false, false);
    //     // test_parse_datasets(&path);
    //     println!("#######################\n")
    // }
    // benchmark_wasm_joins(); FOR ONE WASM INSTANCE

    Ok(())
}

//rustup target add wasm32-wasi