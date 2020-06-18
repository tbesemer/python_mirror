FROM debian:stretch
MAINTAINER Thomas Besemer, thomas.besemer@gmail.com

RUN apt-get update 
RUN apt-get install -y \
      build-essential \
      python-pip \
      git \
      wget \
      vim

COPY etc/pip.conf /etc/pip.conf

RUN cp /usr/bin/git /usr/bin/git.bin
COPY usr/bin/git /usr/bin/git

RUN cp /usr/bin/wget /usr/bin/wget.bin
COPY usr/bin/wget /usr/bin/wget

#RUN pip install freegames
#RUN pip install ipaddr

RUN git clone https://github.com/tbesemer/python_mirror.git
RUN wget http://192.168.2.113/mirror/configure_log.txt
