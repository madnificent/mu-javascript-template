FROM node:7.1.0-alpine

MAINTAINER Aad Versteden <madnificent@gmail.com>

ENV MU_SPARQL_ENDPOINT 'http://database:8890/sparql'
ENV MU_APPLICATION_GRAPH 'http://mu.semte.ch/application'

WORKDIR /usr/src/app
COPY . /usr/src/app

RUN ln -s /app/app.js /usr/src/app/
RUN npm install

CMD sh boot.sh

ONBUILD ADD . /app/
ONBUILD RUN cd /usr/src/app && npm install && npm install /app
