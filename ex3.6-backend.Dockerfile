FROM golang:1.22-alpine AS builder

WORKDIR /usr/src/app/

RUN \
    apk add --no-cache git &&\
    git clone https://github.com/docker-hy/material-applications tmp_repo &&\
    git -C tmp_repo checkout f5d98f5060305d5369c90f11277d7edb2af88d63 &&\
    mv tmp_repo/example-backend/* . &&\
    rm -rf tmp_repo &&\
    apk del git &&\
    go build &&\
    go test ./... &&\
    adduser --no-create-home --disabled-password --gecos "" matti

FROM scratch

WORKDIR /usr/src/app/

COPY --from=builder /usr/src/app/server ./
COPY --from=builder /etc/passwd /etc/passwd

ENV REQUEST_ORIGIN=http://localhost:5000

USER matti

CMD ["./server"]

EXPOSE 8080
