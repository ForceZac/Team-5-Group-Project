#!/bin/sh
#will need to change where you ssh to based on your experiment
ssh -p 22 cpop@pcvm757-2.emulab.net sudo apt-get update
ssh -p 22 cpop@pcvm757-2.emulab.net sudo apt-get install -y netperf
ssh -p 22 cpop@pcvm757-1.emulab.net git clone https://github.com/cj894884/Team-5-Group-Project
ssh -p 22 cpop@pcvm757-1.emulab.net "cd Team*/netperf && docker build -t netserver ."

ssh -p 22 cpop@pcvm757-1.emulab.net docker run -d --network="host" netserver
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
ssh -p 22 cpop@pcvm757-2.emulab.net netperf -l 60 -H 10.71.0.24 -t TCP_RR -- -r 100,200  >> results/docker.txt
done
for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
ssh -p 22 cpop@pcvm757-2.emulab.net netperf -l 60 -H 10.71.0.24 -t UDP_RR -- -r 100,200  >> results/docker.txt
done
# clean up
#ssh $SERVER docker stop netserver

wait
echo Experiment completed
