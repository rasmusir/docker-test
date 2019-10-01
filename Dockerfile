FROM node:10-alpine

RUN apk update -q

RUN echo "Installing Git"
RUN apk add git

RUN echo "Installing chromium" 
RUN apk add chromium

RUN echo "Installing Curl"
RUN apk add curl

RUN echo "installing Angular-cli"
RUN npm install -g @angular/cli

RUN adduser -D docker
USER docker