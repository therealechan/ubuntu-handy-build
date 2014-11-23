#!/bin/sh

# set parameters
read -p "Enter your server ip: " SERVERIP
read -p "Enter your hostname: " HOST
read -p "Enter group name: " GROUP
read -p "Enter your username: " USER

# host setting
echo "$HOST" > /etc/hostname
hostname -F /etc/hostname

mv /etc/hosts /etc/hosts.bak

echo "
# Your system has configured 'manage_etc_hosts' as True.
# As a result, if you wish for changes to this file to persist
# then you will need to either
# a.) make changes to the master file in /etc/cloud/templates/hosts.tmpl
# b.) change or remove the value of 'manage_etc_hosts' in
#     /etc/cloud/cloud.cfg or cloud-config from user-data
127.0.1.1 tester tester
127.0.0.1 localhost
$SERVERIP $HOST

# The following lines are desirable for IPv6 capable hosts
::1 ip6-localhost ip6-loopback
fe00::0 ip6-localnet
ff00::0 ip6-mcastprefix
ff02::1 ip6-allnodes
ff02::2 ip6-allrouters
ff02::3 ip6-allhosts
" >> /etc/hosts

echo "finish setting host"

# set group and user
addgroup $GROUP
useradd -d /home/$USER -s /bin/bash -m $USER

# set password for new user
echo "set a password for $USER: "
passwd $USER

# add new user to new group
usermod -a -G $GROUP $USER

echo "finish setting user"

# set sudo permission to new user
sudo echo "$USER ALL=(ALL:ALL) ALL" >> /etc/sudoers

echo "$USER is a sudoer now."

echo "basic config done!"

echo "Please exit root user and sign in with $USER to continue"
