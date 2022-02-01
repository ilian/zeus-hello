FROM golang:1.16-alpine

WORKDIR /app
COPY *.go ./

RUN go mod init github.com/ilian/zeus-hello
RUN go build -o /hello
EXPOSE 8080

CMD [ "/hello" ]
