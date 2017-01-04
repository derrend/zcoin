# Zcoin
Docker container wrapper for Zcoin daemon

## Dependencies
[docker](https://docs.docker.com/engine/installation/ "docker engine")  
[docker-compose](https://docs.docker.com/compose/install/ "docker-compose")

## Container Specifications
Base: [alpine:edge](https://hub.docker.com/r/library/alpine/ "base container")  
Size: 117 MB

## Instructions
Start the container:

    docker-compose up -d

Check the status of the container:

    docker-compose ps

Run commands on the container:

    docker-compose exec zcoin zcoind <command>

Stop the container:

    docker-compose down

## Config
Default config file location:

    ~/.zcoin/zcoin.conf

To use zcoind, you must set an rpcuser and rpcpassword in the configuration file:

    rpcuser=zcoinrpc
    rpcpassword=<Long_Complicated_Pa55word>  # change this

## Donate
If you like the project and would like to donate some of your time and expertise by contributing to the code base, that would be fantastic and very much appreciated.

If you cannot produce code but would still like to contrubute, you can donate crypto to any of the addresses listed below which is also very much appreciated.

Bitcoin - [14qQtzyUayEj97JhizmCqwYfovqL6uLtW](https://blockchain.info/address/14qQtzyUayEj97JhizmCqwYfovqL6uLtWj "view address")  
Zcoin - [a5QeZfeDZrsuaGx47B8mfrQRXWJBEXxuye](https://zcoin.rocks/address/a5QeZfeDZrsuaGx47B8mfrQRXWJBEXxuye "view address")
