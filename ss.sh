#!/usr/bin/env bash

sudo apt-get install -y shadowsocks
sudo tee /etc/shadowsocks/config.json <<EOF
{
    "server": "server_addr",
    "server_port": server_port,
    "local_address": "127.0.0.1",
    "local_port": local_port,
    "password": "your-passwd",
    "method": "rc4-md5",
    "fast_open": true,
    "workers": 1
}
EOF

sudo apt-get install -y polipo
sudo systemctl enable polipo.service

sudo tee /etc/polipo/config<<EOF
logSyslog = true
logFile = /var/log/polipo/polipo.log
proxyAddress = "127.0.0.1"
proxyPort = proxyPort
socksParentProxy = "127.0.0.1:local_port"
socksProxyType = socks5
EOF

sudo service polipo restart
