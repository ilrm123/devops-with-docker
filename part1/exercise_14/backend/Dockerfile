FROM golang:1.16

ENV REQUEST_ORIGIN="http://localhost:5000"

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build

RUN go test ./...

CMD ["./server"]
