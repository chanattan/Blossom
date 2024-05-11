# Blossom: a simple Wasm orchestrator
## What is it
Blossom, standing for we**B** assemb**L**y **O**rchestrator **S**erverle**S**s c**OM**puting, is a simple tool used to manage native and Wasm operators from data-management and program scheduling viewpoints.

It initially aims to be a local distributed-simulated platform to assess the performance and energy-consumption
of these operators deployment in serverless environments.

This tool was born with the launch of a research project conducted at IRISA France with Chanattan Sok, Pr. Laurent d'Orazio
and in collaboration with Dimitri Tombroff and Reyyan Tekin from the Thalès group.

The tool developed in Rust and is still in development.

## Dependencies

Wasmtime and WASI are the fundamentals for Blossom as it requires standalone execution of Wasm operators
with the help of WASI as an interface between the host environment and Wasm modules.

Wasmtime allows the setup of Wasm modules and their management.

## Current features

TO-WRITE

## Usage

Local experiments with Blossom can be conducted, a possible use of Blossom is in real-distributed situations
on Grid'5000 (https://www.grid5000.fr/w/Grid5000:Home) clusters, Blossom then manages operator deployment on distributed nodes.
