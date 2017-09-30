FROM library/node:6-alpine

MAINTAINER Gilles Perreymond <gperreymond@gmail.com>

RUN mkdir -p /usr/app
WORKDIR /usr/app

COPY package.json /usr/app/package.json
RUN npm install

VOLUME /usr/app/node_modules
