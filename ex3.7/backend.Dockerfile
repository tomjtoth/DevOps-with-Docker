FROM golang:1.16-alpine

WORKDIR /usr/src/app/

RUN \
    apk add --no-cache git build-base &&\
    git clone https://github.com/docker-hy/material-applications tmp_repo &&\
    git -C tmp_repo checkout f5d98f5060305d5369c90f11277d7edb2af88d63 &&\
    mv tmp_repo/example-backend/* . &&\
    rm -rf tmp_repo &&\
    go build &&\
    go test ./... &&\
    apk del git build-base &&\
    adduser --no-create-home --disabled-password --gecos "" matti

ENV REQUEST_ORIGIN=http://localhost

USER matti

CMD ["./server"]

EXPOSE 8080
