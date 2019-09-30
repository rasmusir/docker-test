FROM ubuntu:disco-20190913

RUN apt-get update -q

RUN echo "Installing Git"
RUN apt-get install git -y -qq

RUN echo "Installing chromium-browser" 
RUN apt-get install chromium-browser -y -qq

RUN echo "Installing Curl"
RUN apt-get install curl -y -qq

RUN echo "Installing nodejs 10.x"
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install nodejs -y -qq

RUN echo "installing Angular-cli"
RUN npm install -g @angular/cli