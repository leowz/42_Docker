#alpine vim image

# Base image
FROM alpine

# File Author
LABEL maintainer="zweng"

# Update package manager
RUN apk update

# Install Vim
RUN apk add vim

# Entry poin
ENTRYPOINT cd; /usr/bin/vim

