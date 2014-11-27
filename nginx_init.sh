#!/bin/sh

# Download nginx-init-ubuntu
wget https://gist.githubusercontent.com/chankaward/26f219de40ec42b81ea4/raw/841ab28b04595e8a079d5d9f304542128e90d1fa/nginx

# Replace nginx
sudo mv ./nginx /etc/init.d/nginx

cd /etc/init.d/nginx

sudo chmod +x /etc/init.d/nginx

# set startup
sudo update-rc.d nginx defaults

# restart nginx
sudo service nginx restart
