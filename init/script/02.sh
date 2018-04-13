#!/bin/bash

apt-get -y update >> /var/log/update_script.log;
apt-get -y upgrade >> /var/log/update_script.log;
echo "00 4 * * 1  /bin/sh ~/cron.sh" | crontab -
