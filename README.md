# alpine-linux-build

This repository provides a Docker image of Alpine Linux with a bunch of compilers needed to build code meant to run on Alpine Linux.

## Compilers included

* Go 1.4.2

## Usage

### Go

```
docker run  --rm \
            --volume /path/to/source:/src \
            --workdir /src \
            pires/alpine-linux-build \
            go build -o my_binary
