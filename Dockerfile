FROM ubuntu:xenial

RUN set -xe \
    && apt-get update && apt-get install -y \
       binutils \
       curl \
       git \
       sudo \
       uuid-runtime \
       wget \
       xz-utils \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN locale-gen en_US.UTF-8 \
    && /usr/sbin/update-locale LANG=en_US.UTF-8

ENV LC_ALL en_US.UTF-8
