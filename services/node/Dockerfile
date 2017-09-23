FROM library/node:6-alpine

MAINTAINER Gilles Perreymond <gperreymond@gmail.com>

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY .npmrc /usr/app/.npmrc
COPY package.json /usr/app/package.json
