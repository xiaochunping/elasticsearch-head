FROM node:6.10.3
MAINTAINER allen <xiaochunping9987@163.com>

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install -g grunt

COPY package.json /usr/src/app/package.json
RUN npm install

COPY . /usr/src/app

EXPOSE 9100

CMD grunt server
