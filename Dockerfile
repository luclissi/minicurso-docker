FROM golang:1.8
LABEL maintainer lucca@lumminy.com 

ADD . /go/src/present

RUN cd /go/src/present &&  go run main.go 

ENV GOPATH=/go

EXPOSE 3999:3999

VOLUME /go/src/present

WORKDIR /go/src/present

ENTRYPOINT /go/bin/present -http=":3999"
