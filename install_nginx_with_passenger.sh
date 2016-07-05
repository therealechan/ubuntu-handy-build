#!/bin/sh

# Install PCRE library
# Otherwise we can't use regex to config nginx like: `location ~ ^/(assets)/`
sudo apt-get install libpcre3 libpcre3-dev

# through passenger to install nginx
gem install passenger –no-ri –no-rdoc
rvmsudo passenger-install-nginx-module
