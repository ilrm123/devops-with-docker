FROM golang:1.22-alpine

ENV REQUEST_ORIGIN="http://localhost"

EXPOSE 8080

WORKDIR /usr/src/app

COPY . .

RUN go build && go test ./... && adduser -D someuser && rm -rf /var/lib/apt/lists/*

USER someuser

CMD ["./server"]
