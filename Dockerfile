FROM golang:1-buster

RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | bash

RUN curl -o- -L https://slss.io/install | bash

ENV PATH="/root/.serverless/bin:${PATH}"
