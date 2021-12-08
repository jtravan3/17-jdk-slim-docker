FROM openjdk:17-jdk-slim

RUN apt-get update
RUN apt-get install --assume-yes apt-transport-https ca-certificates curl gnupg-agent software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable"
RUN apt-get update
RUN apt-get install --assume-yes docker-ce docker-ce-cli containerd.io
