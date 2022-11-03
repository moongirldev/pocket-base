FROM golang:1.19.2-bullseye

WORKDIR /app

COPY . .

RUN go mod tidy

RUN go build -o ./bin/pocketbase ./src

CMD ["/app/bin/pocketbase", "serve"]

EXPOSE 8090