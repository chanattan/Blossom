# Blossom: a simple Wasm orchestrator
## What is it
Blossom, standing for we**B** assemb**L**y **O**rchestrator **S**erverle**S**s c**OM**puting, is a simple tool used to manage native and Wasm operators from data-management and program scheduling viewpoints.

It initially aims to be a local distributed-simulated platform to assess the performance and energy-consumption
of these operators deployment in serverless environments. For now, it compares performance between Rust native and Wasm32 programs.

This tool was born with the launch of a research project conducted at IRISA France with Chanattan Sok, Pr. Laurent d'Orazio
and in collaboration with Dimitri Tombroff and Reyyan Tekin from the Thalès group.

The tool developed in Rust and is still in development.

## Dependencies

Wasmtime and WASI are the fundamentals for Blossom as it requires standalone execution of Wasm operators
with the help of WASI as an interface between the host environment and Wasm modules.

Wasmtime allows the setup of Wasm modules and their management.

## Current features

### Join performance assessment in Rust native and Wasm32 under Wasmtime
- Target compilation of join operators to Rust native
- Target compilation of join operators to Wasm32
- Target compilation of the program-wrapper for native operators in Rust native
- Target compilation of the program-wrapper for Wasm operators in Rust native (necessary to overcome memory limits)

## Use

### Classic use

In order to perform join performance assessment between native and Wasm32, here are the steps:

1) Select the operator with the environment you want in the sources, change the program as desired, then compile it to the target.
  - In native, run: `cargo build --release`
  - In Wasm32, run: `cargo build release --target wasm32-wasi`
2) Retrieve your join operator from the release folder, move it to some location that will be common to the program wrapper.
Note that, the program wrapper for the native for now has no use to the native operator, as it can be run as standalone. Further support
would allow more stable tests conducted through a native program-wrapper to handle measurements in repeated tests.
3) In native you can run the operator. In Wasm32 select the program-wrapper source file with the environment you want, compile it to native
as release with the same command for native as above.
4) Retrieve your program-wrapper executable and move it to the location selected in 2) then run it.

### More intensive use

In order to run more intensive tests or change the tests themselves, directly change the parameters in the library `joins/lib.src` in the operators files
and the code in the join operators with a given environment itself to run different tests.

Local experiments with Blossom can be conducted, a possible use of Blossom is in real-distributed situations
on Grid'5000 (https://www.grid5000.fr/w/Grid5000:Home) clusters.
