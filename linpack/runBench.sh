#!/bin/sh

numsockets=2
./docker.sh $numsockets
numsockets=1
./docker.sh $numsockets

cd bin
time numactl --physcubind=0-7,16-23 --localloc ./runme_xeon64
time numactl --physcubund=0-31 --interleave=0,1 ./runme_xeon64
