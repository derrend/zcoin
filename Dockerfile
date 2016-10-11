FROM ubuntu:14.04
MAINTAINER Derren Desouza <derrend@yahoo.co.uk>
RUN apt update \
 && apt install -y \
        build-essential \
        g++ \
        protobuf-compiler \
        libboost-all-dev \
        autotools-dev \
        automake \
        libcurl4-openssl-dev \
        libboost-all-dev \
        libssl-dev \
        libdb++-dev \
        make \
        autoconf \
        automake \
        libtool \
        git \
        apt-utils \
        libprotobuf-dev \
        pkg-config \
        libcurl3-dev \
        libudev-dev \
        libqrencode-dev \
        bsdmainutils \
        pkg-config \
        libssl-dev \
        libgmp3-dev \
        libevent-dev \
 && cd /root \
 && git clone https://github.com/zcoinofficial/zcoin.git \
 && cd zcoin/src \
 && make -f makefile.unix USE_UPNP=- RELEASE=1 STATIC=1 \
 && strip zcoind \
 && apt remove -y build-essential autotools-dev automake pkg-config git \
 && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV PATH=/root/zcoin/src:$PATH
VOLUME ["/root/.zcoin"]
WORKDIR /root/zcoin/src
ENTRYPOINT ["zcoind"]
EXPOSE 18888 8888 18168 8168

