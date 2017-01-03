FROM alpine:edge
MAINTAINER Derren Desouza <derrend@yahoo.co.uk>
RUN apk --no-cache add alpine-sdk openssl-dev boost-dev db-dev \
    && for i in $(ls /usr/lib/libboost_thread*); do ln -s $i $(echo $i | sed s/\-mt//); done \
    ##
    && cd \
    && wget http://download.oracle.com/berkeley-db/db-4.8.30.NC.tar.gz \
    && tar -xvf db-4.8.30.NC.tar.gz \
    && cd db-4.8.30.NC/build_unix \
    && mkdir -p build \
    && BDB_PREFIX=$(pwd)/build \
    && ../dist/configure --enable-cxx \
    && make install \
    ##
    && cd \
    && git clone -b dev https://github.com/zcoinofficial/zcoin.git \
    && cd zcoin/src \
    && make -f makefile.unix USE_UPNP=- RELEASE=1 \
    && strip zcoind \
    && mv zcoind /usr/local/bin \
    ##
    && cd \
    && rm -rf * \
    && apk del alpine-sdk

VOLUME ["/root/.zcoin"]
ENTRYPOINT ["/usr/local/bin/zcoind"]
EXPOSE 18888 8888 18168 8168
