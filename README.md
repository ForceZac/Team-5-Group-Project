# CSC 468 Project - Team 5

## Team Members:
- Christian Johnson
- Zach Force
- Fergus Horner 
- Chris Popeck 
## Project Overview Linpack:
The Linpack benchmark was introduced by Jack Dongarra which measures a given system's floating-point computing power. It is used to measure how fast a computer solves a dense n by n system of linear equations Ax = b.
The bench mark was ran twice using two dockerfiles. Dockerfile.oneSocket and Dockerfile.twoSocket.  The difference between the two is that oneSocket uses 16 threads while twoSocket uses 32.
In our tests the twoSocket benchmark completed the trails about twice as fast as the oneSocket benchmark.
Attached below is the outcome of the oneSocket run and twoSocket run.





