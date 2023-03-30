#!/bin/sh
apt-get -y install squid && systemctl enable squid && sed -i 's/http_access deny all/http_access allow all/' /etc/squid/squid.conf && sleep 1;
