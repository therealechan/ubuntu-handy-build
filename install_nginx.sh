#!/bin/sh

# through passenger to install nginx
gem install passenger –no-ri –no-rdoc
rvmsudo passenger-install-nginx-module
