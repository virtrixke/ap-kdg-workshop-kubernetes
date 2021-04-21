FROM golang:1.16-alpine
RUN mkdir /app
WORKDIR /demo-golang
COPY . .
RUN go mod init github.com/virtrixke/ap-kdg-workshop-kubernetes
RUN CGO_ENABLED=0 go build -installsuffix 'static' -o /app
EXPOSE 8080
ENTRYPOINT ["/app"]