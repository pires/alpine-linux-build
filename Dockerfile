FROM alpine:3.2
MAINTAINER pjpires@gmail.com

RUN apk update; apk upgrade; \
    sed -i -e 's/v3\.2/edge/g' /etc/apk/repositories; apk update; \
    apk add curl make git go; \
    mkdir /gopath; \
    rm -rf /var/cache/apk/*

# Go
ENV GOPATH /gopath
RUN go get github.com/constabulary/gb/... && \
    go get github.com/tools/godep
ENV PATH $GOPATH/bin:$PATH
