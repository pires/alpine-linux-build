FROM alpine:3.2
MAINTAINER pjpires@gmail.com

RUN apk update; \
    apk add go; \
    apk add curl git && \
    rm -rf /var/cache/apk/*
