FROM node:7.7.4
MAINTAINER MEDEVIT <office@medevit.at>

RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list.d/backports.list && \
    apt-get update && apt-get install -t jessie-backports -y openjdk-8-jdk-headless && rm -rf /var/lib/apt/lists/* && \
	npm install -g gulp jspm