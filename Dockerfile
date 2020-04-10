FROM ubuntu:18.04
ARG NMAP_SUBNET
RUN apt-get update && apt-get install -y nmap
RUN nmap -sn $NMAP_SUBNET
