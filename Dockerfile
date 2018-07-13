#
# Docker image to build Android 8.0 or higher
#

FROM ubuntu:16.04

# Install required packages
RUN apt-get update && apt-get upgrade -y && apt-get install -y \
    bc \
    bison \
    build-essential \
    curl \
    default-jdk \
    genisoimage \
    git \
    lib32stdc++6 \
    libxml2-utils \
    python \
    unzip \
    zip \
 && rm -rf /var/lib/apt/lists/*

# Change default shell from dash to bash
RUN echo "dash dash/sh boolean false" | debconf-set-selections && \
    dpkg-reconfigure -p critical dash
