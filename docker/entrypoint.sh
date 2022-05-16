#!/bin/sh

mkdir -p /public

# generate host keys if not present
ssh-keygen -A
chmod 700 /root/.ssh && chmod 600 /root/.ssh/authorized_keys
exec /usr/sbin/sshd -D -e &
exec nginx -c /etc/nginx/nginx.conf -g 'daemon off;'