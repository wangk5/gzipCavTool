FROM ubuntu:16.04
MAINTAINER

RUN \
apt-get update -y && \
apt-get upgrade -y && \
apt-get install software-properties-common python-software-properties -y && \
add-apt-repository ppa:jonathonf/python-3.6 -y && \
apt-get update -y && \
apt-get install python3.6 -y && \
apt-get install python3-pip -y && \
pip3 install docopt && \
apt-get install pigz

WORKDIR /usr/local/bin
COPY Dockerfile /usr/local/bin/Dockerfile
