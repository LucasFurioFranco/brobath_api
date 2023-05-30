FROM node:latest

RUN apt update -y
RUN apt upgrade -y
RUN apt install nano -y

RUN mkdir -p /app

WORKDIR /app

COPY . /app

RUN npm install

RUN npm install -g nodemon

EXPOSE 5001

#CMD [ "npm", "start" ]

CMD [ "nodemon", "index.js" ]

#RUN nodemon -L --inspect=0.0.0.0 index.js
