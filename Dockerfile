FROM node:latest

RUN mkdir -p /brobath_test

WORKDIR /brobath_test

COPY package.json /brobath_test/

RUN npm install

COPY . /brobath_test

EXPOSE 3000

CMD [ "npm", "start" ]
