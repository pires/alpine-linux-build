# alpine-linux-build

This repository provides a Docker image of Alpine Linux with a bunch of compilers needed to build code meant to run on Alpine Linux.

[![Docker Repository on Quay.io](https://quay.io/repository/pires/alpine-linux-build/status "Docker Repository on Quay.io")](https://quay.io/repository/pires/alpine-linux-build)

## Compilers included

* Go 1.5, including
  * `make`
  * [`godep`](https://github.com/tools/godep)
  * [`gb`](http://getgb.io)

## Usage

### Go

```
docker run  --rm \
            --volume /path/to/source:/src \
            --workdir /src \
			-e UID=$(id -u) \
			-e GID=$(id -g) \
            quay.io/pires/alpine-linux-build \
            go build -o my_binary
```

Or with `gb`

```
docker run  --rm \
            --volume /path/to/source:/src \
            --workdir /src \
			-e UID=$(id -u) \
			-e GID=$(id -g) \
            quay.io/pires/alpine-linux-build \
            gb build -a
```

Or with `make` (needs a `Makefile` file in the source root)

```
docker run  --rm \
            --volume /path/to/source:/src \
            --workdir /src \
			-e UID=$(id -u) \
			-e GID=$(id -g) \
            quay.io/pires/alpine-linux-build \
            make
```

The `-e UID=$(id -u)` trick causes the commands to be run with your user ID inside the container, so output files
will be owned by you, instead of by `root` which is the default in Docker.
