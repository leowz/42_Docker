# Debian Teamspeak

# Base image
FROM debian

# File Author
LABEL maintainer="zweng"

# Update package manager
RUN apt-get update -y

# install wget bzip2 procps
RUN apt-get install -y wget bzip2 procps

# Install and unzip teamspeak
RUN wget http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2
RUN tar xfvj teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2

# Entry poin
ENTRYPOINT cd teamspeak3-server_linux_amd64; ./ts3server_startscript.sh start; /bin/bash

