FROM jenkins/jenkins:lts-jdk11
USER root
WORKDIR /home

# basic
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install -y curl gnupg

# installing python3 and pip
RUN apt-get -y install python3 python3-pip

# installing node
RUN curl -sL https://deb.nodesource.com/setup_14.x  | bash -
RUN apt-get -y install nodejs

# installing angular
RUN npm install -g @angular/cli

# drop back to the regular jenkins user - good practice
USER jenkins
# exposing jenkins port
EXPOSE 8080

