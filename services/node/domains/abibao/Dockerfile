FROM library/node:6-alpine

MAINTAINER Gilles Perreymond <gperreymond@gmail.com>

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY .tail /usr/app/.tail
COPY commands /usr/app/domain/commands
COPY queries /usr/app/domain/queries
