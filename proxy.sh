#!/bin/sh
apt-get -y install squid && systemctl enable squid && sed -i 's/http_access deny all/http_access allow all/' /etc/squid/squid.conf && sed -i 's/http_port 3128/http_port 8181/' /etc/squid/squid.conf && service squid restart && sleep 1;
