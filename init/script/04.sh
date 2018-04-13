#!/bin/bash

m5file=~/m5crontab
crontab=/etc/crontab
if [ -e "$m5file" ];then
		if ! md5sum $crontab | diff $m5file - ;then
			echo "crontab has been changed" | mail -s "crontab" root;
		fi
else
	echo "00 0 * * * /bin/sh ~/mail.sh" | crontab -
	touch $m5file
	md5sum $crontab > $m5file
fi

