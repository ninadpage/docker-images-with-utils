FROM ubuntu:focal
MAINTAINER Ninad Page <https://github.com/ninadpage/>

ENV DEBIAN_FRONTEND=noninteractive

WORKDIR /root
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
    wget \
    zip

# Install awscli v2
RUN mkdir awscli && cd awscli && \
    curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    cd .. && rm -rf awscli
