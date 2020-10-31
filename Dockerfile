FROM debian:buster

RUN apt-get update -y && \
  apt-get install -y apt-transport-https ca-certificates curl gnupg-agent software-properties-common && \
  curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add - && \
  add-apt-repository -y "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable" && \
  apt-get update -y && \
  apt-get install -y docker-ce-cli python python-pip && \
  pip install awscli
