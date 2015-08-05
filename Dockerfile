FROM alpine:3.2
MAINTAINER pjpires@gmail.com

RUN apk update; \
    apk add curl git && \
    apk add go && mkdir /gopath && \
    rm -rf /var/cache/apk/*

# Go
ENV GOPATH /gopath
RUN go get golang.org/x/tools/cmd/... && \
    go get github.com/constabulary/gb/... && \
    go get github.com/tools/godep
ENV PATH $GOPATH/bin:$PATH
