# image: ninadpage/utils:al2023
FROM amazonlinux:2023
LABEL maintainer="Ninad Page <ninadpage@users.noreply.github.com>"

WORKDIR /root
RUN dnf update -y && dnf install -y \
    bind-utils \
    git \
    gzip \
    iputils \
    jq \
    nmap \
    nmap-ncat \
    net-tools \
    openssh-clients \
    python3-pip \
    tar \
    tcpdump \
    telnet \
    traceroute \
    unzip \
    vim \
    wget \
    zip \
    && dnf clean all

RUN pip3 install --no-cache-dir httpie && \
    rm -rf /root/.cache/pip/*

# Install awscli v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf aws awscliv2.zip
