FROM golang:1.16

WORKDIR /usr/src/app/


RUN \
    git clone https://github.com/docker-hy/material-applications tmp_repo &&\
    git -C tmp_repo checkout f5d98f5060305d5369c90f11277d7edb2af88d63 &&\
    mv tmp_repo/example-backend/* . &&\
    rm -rf tmp_repo

# this is added in ex1.14
ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

# running tests
RUN go test ./...

# added in ex3.5
RUN useradd matti
USER matti

CMD ["./server"]

EXPOSE 8080
