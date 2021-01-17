FROM node:12

WORKDIR /usr/src/app

COPY ./les_03/node-js/package*.json ./

RUN npm install

COPY ./les_03/node-js/ .

EXPOSE 8080
CMD [ "node", "server.js" ]
