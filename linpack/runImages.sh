#!/bin/bash

docker pull cj894884/dockerhub:linpackonesocket
docker run -ti --privileged cj894884/dockerhub:linpackonesocket
docker image rm -f cj894884/dockerhub:linpackonesocket

docker pull cj894884/dockerhub:linpacktwosocket
docker run -ti --pivileged cj894884/dockerhub:linpacktwosocket
docker image rm -f cj894884/dockerhub:linpacktwosocket

cd bin
time numactl --physcpubind=0-7,16-23 --localloc ./runme_xeon64
time numactl --physcpubind=0-31 --interleave=0,1 ./runme_xeon64
