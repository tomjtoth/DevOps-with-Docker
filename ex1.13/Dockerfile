FROM golang:1.16

WORKDIR /usr/src/app/

COPY . .

# this is added in ex1.14
ENV REQUEST_ORIGIN=http://localhost:5000

RUN go build

# running tests
RUN go test ./...

CMD ["./server"]

EXPOSE 8080
