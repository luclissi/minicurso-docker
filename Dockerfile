FROM golang:1.8

LABEL maintainer lucca@lumminy.com 

WORKDIR /go/src/present

COPY . .

ENV GOPATH=/go

EXPOSE 3999:3999

RUN go run main.go 

ENTRYPOINT /go/bin/present -http=":3999"
