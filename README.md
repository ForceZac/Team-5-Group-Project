# CSC 468 Project - Team 5

## Team Members:
- Christian Johnson
- Zach Force
- Fergus Horner 
- Chris Popeck 
## Project Overview
 We have chosen to do the Performance evaluation of virtualization approaches project. Will conduct our tests by setup scripts to run the benchmarking containers at least 20 times and collect performance metrics. All these test will be done on different types arhcitecture one being CloudLab x86_64 and the other ARM architecture to determine which works the best.

## Chosen Benchmarks:
- Redis
- MySQL
- Network latency—netperf
  Netperf will be used to measure round-trip network latency.  The CloudLab x86_64 and ARM architecture's will run the server while another machine acts as the client.  Our client will send out a 100-byte request to the server which the server will send a 200-byte response back to. The time it takes for the client to get this response after sending out the request will give us the network latency.
- HPC—Linpack
  -Linpack solves a dense system of linear equations using an algorithm that carries out LU factorization with partial pivoting. The majority of compute operations will be spent in double-precision floating point multiplication. This benchmark is typically based on a linear algebra library that will be heavily optimized for the machine architecture we will be building. We will utilize Intel Math Kernel Library for our Linpack binary.

## Deliverable #1:

Github from document:
https://github.com/thewmf/kvm-docker-comparison
