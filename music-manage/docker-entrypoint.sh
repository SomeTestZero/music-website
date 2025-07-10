#!/bin/sh
# 替换 index.html 里的 NODE_HOST
envsubst '$NODE_HOST' < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html.tmp && \
mv /usr/share/nginx/html/index.html.tmp /usr/share/nginx/html/index.html

# 替换 nginx.conf 里的 PORT
envsubst '$PORT' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf.tmp && \
mv /etc/nginx/conf.d/default.conf.tmp /etc/nginx/conf.d/default.conf

exec nginx -g 'daemon off;'
