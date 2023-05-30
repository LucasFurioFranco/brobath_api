FROM node:latest

RUN apt update -y
RUN apt upgrade -y
RUN apt install nano -y

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN npm install

EXPOSE 5001

CMD [ "npm", "start" ]
