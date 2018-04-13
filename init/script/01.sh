cat /etc/passwd | egrep -v ^# | cut -d ':' -f1 -f3 -f7
