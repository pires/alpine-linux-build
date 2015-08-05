FROM alpine:3.2
MAINTAINER pjpires@gmail.com

RUN apk update; \
    apk add curl; \
    apk add go; \
    rm -rf /var/cache/apk/*
