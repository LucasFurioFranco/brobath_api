FROM node:latest

CMD ["apt", "install", "nano"]

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 5001

CMD [ "npm", "start" ]
