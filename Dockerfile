FROM golang:1.14-alpine3.12
RUN apk add --update --no-cache build-base imagemagick imagemagick-c++ imagemagick-dev imagemagick-libs
