# Debian Teamspeak

# Base image
FROM 	ruby

# File Author
LABEL 	maintainer="zweng"

# Update package manager
RUN 	apt-get update -y

# install nodejs rails bundle
RUN 	apt-get install -y nodejs
RUN 	gem install rails
RUN		rails new app	

# Entry poin
ENTRYPOINT cd app; bundle install; rails server -p 8001 -b 0.0.0.0; /bin/bash
