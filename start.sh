#!/bin/bash

sys_hostname="`uname -n`"

echo "Start up ..."
sed -i "s/FUBAR/$who/g" /usr/share/nginx/html/index.html
sed -i "s/SYS_HOSTNAME/$sys_hostname/g" /usr/share/nginx/html/index.html

if [ $debug = "true" ]
then
    echo "<html><h1>Debug:</h1>" > /usr/share/nginx/html/debug.html
    env >> /usr/share/nginx/html/debug.html
    sed -i ':a;N;$!ba;s/\n/<br>\n/g' /usr/share/nginx/html/debug.html
    echo "</html>" >> /usr/share/nginx/html/debug.html
fi

nginx -g 'daemon off;'
