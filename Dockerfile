FROM golang:1.14-alpine3.12

# install imagemagick
RUN apk add --update --no-cache build-base imagemagick imagemagick-c++ imagemagick-dev imagemagick-libs

# install golangci-lint
RUN wget -O- -nv https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s v1.29.0
