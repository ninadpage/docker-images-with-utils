FROM ubuntu:bionic
MAINTAINER Ninad Page <https://github.com/ninadpage/>

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    curl \
    dnsutils \
    git \
    hping3 \
    httpie \
    iputils-ping \
    iputils-tracepath \
    jq \
    netcat \
    net-tools \
    nmap \
    ssh \
    tcpdump \
    telnet \
    traceroute \
    vim \
    wget
