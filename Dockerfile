FROM golang:1 as go

FROM node:lts as build
COPY --from=go /usr/local/go /usr/local/go

ENV PATH=/usr/local/go/bin:$PATH
ENV GOPATH=/go
ENV GOROOT=/usr/local/go
ENV GOPROXY=https://proxy.golang.org,direct
ENV CGO_ENABLED=1

RUN curl -o- -L https://slss.io/install | bash
