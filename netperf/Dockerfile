#FROM ubuntu:14.04
FROM UBUNTU
MAINTAINER paultiplady@gmail.com

# Satisfy deps
#RUN apt-get update && \
 #   apt-get install -y gcc make curl && \
  #  apt-get clean && \
   # rm -rf /tmp/* /var/tmp/* && \
    #rm -rf /var/lib/apt/lists/* && \
    #rm -f /etc/dpkg/dpkg.cfg.d/02apt-speedup   

# Download netperf
#RUN curl -LO https://github.com/HewlettPackard/netperf/archive/netperf-2.7.0.tar.gz && tar -xzf netperf-2.7.0.tar.gz && mv netperf-netperf-2.7.0/ netperf-2.7.0
#RUN cd netperf-2.7.0 && ./configure && make && make install
RUN apt-get update
RUN apt-get install -y netperf
CMD ["netserver", "-D"]

#May need these
#ENTRYPOINT ["netserver", "-v", "-p", "12865"]
#EXPOSE 12865
