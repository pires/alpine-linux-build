FROM alpine:edge
MAINTAINER pjpires@gmail.com

RUN echo "http://dl-4.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    apk update; apk upgrade; \
    apk add curl make git go; \
    mkdir /gopath; \
    rm -rf /var/cache/apk/*

# Go
ENV GOPATH /gopath
RUN go get github.com/constabulary/gb/... && \
    go get github.com/tools/godep
ENV PATH $GOPATH/bin:$PATH
