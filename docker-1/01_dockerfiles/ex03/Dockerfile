# Debian GitLab

# Base image
FROM 	debian

# File Author
LABEL 	maintainer="zweng"

# Update package manager
RUN 	apt-get update -y

# install nodejs rails bundle
RUN 	apt-get install -y curl openssh-server ca-certificates
RUN		curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | /bin/bash
RUN		apt-get install gitlab-ce

# Entry poin
ENTRYPOINT cd app; bundle install; rails server -p 8001 -b 0.0.0.0; /bin/bash
