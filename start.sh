#!/bin/bash

sys_hostname="`uname -n`"

echo "Start up ..."
sed -i "s/FUBAR/$who/g" /usr/share/nginx/html/index.html
sed -i "s/SYS_HOSTNAME/$sys_hostname/g" /usr/share/nginx/html/index.html
nginx -g 'daemon off;'

