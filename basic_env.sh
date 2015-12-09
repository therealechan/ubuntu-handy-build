#!/bin/sh

# server zone setting
sudo locale-gen en_US en_US.UTF-8 en_CA.UTF-8
sudo dpkg-reconfigure locales

#  system update
sudo apt-get update
sudo apt-get upgrade -y

# install nginx require software
sudo apt-get install libcurl4-openssl-dev -y

# install git
sudo apt-get install -y git

# install nodejs
sudo apt-get install -y nodejs

# install curl
sudo apt-get install curl

# install imagemagick
sudo apt-get install -y imagemagick
