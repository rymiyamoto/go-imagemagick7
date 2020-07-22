FROM golang:1.14-alpine3.12
RUN apk add --update --no-cache build-base imagemagick imagemagick-c++ imagemagick-dev imagemagick-libs
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.29.0
