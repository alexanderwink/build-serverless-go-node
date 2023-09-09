FROM golang:1-buster
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash
ENV NVM_DIR=/root/.nvm
RUN . "$NVM_DIR/nvm.sh" && nvm install --lts
RUN curl https://raw.githubusercontent.com/golang/dep/master/install.sh | bash
RUN curl -o- -L https://slss.io/install | bash
ENV PATH="/root/.serverless/bin:${PATH}"
