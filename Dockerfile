FROM golang:1.17.2-alpine AS build-env

RUN apk add git
ADD . /go/src/enumerepo
WORKDIR /go/src/enumerepo
RUN go build -o enumerepo

FROM alpine:3.14
LABEL licenses.enumerepo.name="MIT" \
      licenses.enumerepo.url="https://github.com/cvedb/enumerepo/blob/main/LICENSE" \
      licenses.golang.name="bsd-3-clause" \
      licenses.golang.url="https://go.dev/LICENSE?m=text"

COPY --from=build-env /go/src/enumerepo/enumerepo /bin/enumerepo

RUN mkdir -p /hive/in /hive/out

WORKDIR /app
RUN apk add bash

ENTRYPOINT [ "enumerepo" ]
