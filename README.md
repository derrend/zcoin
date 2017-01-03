# Zcoin
Docker container wrapper for Zcoin daemon

## Base
[alpine:edge](https://hub.docker.com/r/library/alpine/)

## Dependencies
[docker](https://docs.docker.com/engine/installation/ "docker engine")  
[docker-compose](https://docs.docker.com/compose/install/ "docker-compose")

## Instructions
Start the deamon:

    docker-compose up -d

Run commands on the daemon:

    docker-compose exec zcoin zcoind <command>

Stop the daemon:

    docker-compose down

## Config
Default config file location:

    ~/.zcoin/zcoin.conf

## Donate
If you like the project and would like to donate some of your time and expertise by contributing to the code base, that would be fantastic and very much appreciated.

If you cannot produce code but would still like to contrubute, you can donate crypto to any of the addresses listed below which is also very much appreciated.

Bitcoin - [14qQtzyUayEj97JhizmCqwYfovqL6uLtW](https://blockchain.info/address/14qQtzyUayEj97JhizmCqwYfovqL6uLtWj "view address")  
Zcoin - [a5QeZfeDZrsuaGx47B8mfrQRXWJBEXxuye](https://zcoin.rocks/address/a5QeZfeDZrsuaGx47B8mfrQRXWJBEXxuye "view address")
