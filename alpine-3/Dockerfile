# image: ninadpage/utils:alpine,alpine-3
# Use bash:alpine* base image as it uses bash as the entrypoint rather than (a)sh.
FROM bash:alpine3.22
LABEL maintainer="Ninad Page <ninadpage@users.noreply.github.com>"

WORKDIR /root
RUN apk update && apk add --no-cache \
    bind-tools \
    busybox-extras \
    curl \
    git \
    gzip \
    iputils \
    jq \
    netcat-openbsd \
    net-tools \
    nmap \
    openssh-client \
    pipx \
    py3-pip \
    python3 \
    tar \
    tcpdump \
    traceroute \
    unzip \
    vim \
    wget \
    zip

RUN pipx install httpie

# Install awscli v2
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" \
    && unzip awscliv2.zip \
    && ./aws/install \
    && rm -rf aws awscliv2.zip
