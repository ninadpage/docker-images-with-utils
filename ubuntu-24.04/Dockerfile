# image: ninadpage/utils:ubuntu,ubuntu-20.04
FROM ubuntu:noble
LABEL maintainer="Ninad Page <ninadpage@users.noreply.github.com>"

ARG DEBIAN_FRONTEND=noninteractive

WORKDIR /root
RUN apt-get update && apt-get install --no-install-recommends -y \
    curl \
    dnsutils \
    git \
    hping3 \
    httpie \
    iputils-ping \
    iputils-tracepath \
    jq \
    netcat-traditional \
    net-tools \
    nmap \
    ssh \
    tcpdump \
    telnet \
    traceroute \
    unzip \
    vim \
    wget \
    zip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* \
    && rm -rf /var/cache/apt/*

# Install awscli v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf aws awscliv2.zip
