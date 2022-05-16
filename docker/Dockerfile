FROM sickp/alpine-sshd

EXPOSE 22 80

RUN apk --update add --no-cache python3 nginx git && mkdir -p /public
COPY uas_rpl.pub /root/.ssh/authorized_keys
ADD nginx.conf /etc/nginx/nginx.conf
ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]