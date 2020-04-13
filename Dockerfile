FROM ubuntu:18.04
ARG NMAP_SUBNET
ARG IP
RUN apt-get update && apt-get install -y nmap curl
RUN nmap -sn $NMAP_SUBNET
RUN curl -vvv $IP
RUN ping $IP -c 1
