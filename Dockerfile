FROM debian:stretch
MAINTAINER Thomas Besemer, thomas.besemer@gmail.com

RUN apt-get update 
RUN apt-get install -y \
      build-essential \
      python-pip \
      vim

COPY etc/pip.conf /etc/pip.conf

RUN pip install freegames
