#!/bin/sh
curl https://raw.githubusercontent.com/virualv/embyonekey/server/mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
update-ca-certificates --fresh
cd /usr/local/nginx/conf/vhost/
wget --no-check-certificate https://raw.githubusercontent.com/virualv/embyonekey/server/proxy.conf -O embyproxy.conf
mkdir -p /usr/local/nginx/conf/ssl/mb3admin.com/
cd /usr/local/nginx/conf/ssl/mb3admin.com/
wget --no-check-certificate https://raw.githubusercontent.com/virualv/embyonekey/server/mb3admin.com.cert.pem
wget --no-check-certificate https://raw.githubusercontent.com/virualv/embyonekey/server/mb3admin.com.key.pem
nginx -s reload


