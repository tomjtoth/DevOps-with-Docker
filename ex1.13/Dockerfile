FROM golang:1.16

WORKDIR /usr/src/app/

COPY . .

RUN go build

# running tests
RUN go test ./...

CMD ["./server"]

EXPOSE 8080
