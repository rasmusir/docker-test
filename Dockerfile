FROM ubuntu:disco-20190913

RUN apt-get update -q
RUN echo "Installing Git, NodeJS and Chromium"
RUN apt-get install git nodejs chromium-browser -y -qq

RUN echo "installing Angular-cli"
RUN npm install -g @angular/cli