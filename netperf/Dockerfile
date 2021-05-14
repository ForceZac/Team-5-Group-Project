#FROM ubuntu:14.04
FROM ubuntu
MAINTAINER paultiplady@gmail.com


RUN apt-get update
RUN apt-get install -y netperf
#CMD ["netserver", "-D"]

#May need these
ENTRYPOINT ["netserver", "-D", "-p", "12865"]
EXPOSE 12865
