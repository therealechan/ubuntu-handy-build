#!/bin/sh

# Download nginx-init-ubuntu
wget https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/nginx

# Replace nginx
sudo mv ./nginx /etc/init.d/nginx

sudo chmod +x /etc/init.d/nginx

# set startup
sudo update-rc.d nginx defaults

# start nginx
sudo service nginx start
