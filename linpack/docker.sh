#!/bin/sh

# Set up the dockerfile
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 numberOfSockets (specify as 1 or 2)" 
    exit 1
fi

if [ "$1" -eq 1 ]; then
    rm -f Dockerfile
    ln -s Dockerfile.oneSocket Dockerfile
elif [ "$1" -eq 2 ]; then
    rm -f Dockerfile
    ln -s Dockerfile.twoSocket Dockerfile
else
    echo "Usage: $0 numberOfSockets (specify as 1 or 2)" 
    exit 1
fi


docker build -t linpack .

# run the test


echo "Running linpack, started at $now"
echo "--------------------------------------------------------------------------------"
echo "Running linpack, started at $now" 
docker run -ti --privileged linpack
docker run --rm linpack
rm -f Dockerfile
echo "" 
echo -n "Experiment completed at "; date
