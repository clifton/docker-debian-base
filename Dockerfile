FROM debian:7.4
MAINTAINER clifton <cliftonk@gmail.com>

RUN echo "deb http://ftp.us.debian.org/debian/ wheezy main contrib non-free" > /etc/apt/sources.list
RUN echo "deb-src http://ftp.us.debian.org/debian/ wheezy main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://security.debian.org/ wheezy/updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://security.debian.org/ wheezy/updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-updates main contrib non-free" >> /etc/apt/sources.list
RUN echo "deb-src http://ftp.us.debian.org/debian/ wheezy-updates main contrib non-free" >> /etc/apt/sources.list

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update 
RUN apt-get -y upgrade
RUN apt-get -y dist-upgrade
RUN apt-get -y install curl sudo
RUN apt-get clean
