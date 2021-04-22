FROM golang:alpine AS builder
RUN apk update && apk add --no-cache git
WORKDIR /demo-golang
COPY main.go .
RUN go mod init github.com/virtrixke/ap-kdg-workshop-kubernetes
RUN go mod download
RUN go mod tidy
RUN go build main.go

# FROM alpine
FROM golang:alpine
WORKDIR /app
COPY --from=builder /demo-golang/main /app
EXPOSE 8080
CMD ["./main"]