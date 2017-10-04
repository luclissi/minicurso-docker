FROM golang:1.8

LABEL maintainer lucca@lumminy.com 

WORKDIR /go/src/present

COPY . .

ENV GOPATH=/go

EXPOSE 3999:3999

RUN go run main.go 

ENTRYPOINT /go/bin/present -http=":3999"


# RUN CGO_ENABLED=0 GOOS=linux go get -d golang.org/x/net 
# RUN CGO_ENABLED=0 GOOS=linux go get -d golang.org/x/tools 
# RUN go install golang.org/x/tools/cmd/present
# RUN /go/bin/present


# FROM golang:1.7.3 as builder
# WORKDIR /go/src/github.com/alexellis/href-counter/
# RUN go get -d -v golang.org/x/net/html  
# COPY app.go    .

# FROM alpine:latest  
# RUN apk --no-cache add ca-certificates
# WORKDIR /root/
# COPY --from=builder /go/src/github.com/alexellis/href-counter/app    .
# CMD ["./app"]  

# FROM golang:1.7.3 as builder
# WORKDIR /go/src/
# COPY present.slide .
# COPY . .