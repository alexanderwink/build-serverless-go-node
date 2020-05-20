FROM golang:1-buster

RUN apt-get update && apt-get install -y --no-install-recommends curl && rm -rf /var/lib/apt/lists/*

RUN curl -o- -L https://slss.io/install | bash
