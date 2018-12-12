FROM ubuntu:bionic
MAINTAINER Ninad Page <https://github.com/ninadpage/>

RUN apt update && apt install -y \
    curl \
    dnsutils \
    net-tools \
    telnet \
    vim
