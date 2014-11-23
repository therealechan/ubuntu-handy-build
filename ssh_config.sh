#!/bin/sh

# config ssh
echo "starting to config ssh setting"
read -p "Enter your username: " USER

echo "Disable root login"
sudo sed -i "s/PermitRootLogin yes/PermitRootLogin no/g" /etc/ssh/sshd_config

echo "Disable empty passwords"
sudo sed -i "s/PermitEmptyPasswords yes/PermitEmptyPasswords no/g" /etc/ssh/sshd_config

echo "Enable RSA authentication"
sudo sed -i "s/#RSAAuthentication/RSAAuthentication/g" /etc/ssh/sshd_config

echo "Enable publie key authentication"
sudo sed -i "s/#PubkeyAuthentication/PubkeyAuthentication/g" /etc/ssh/sshd_config

echo "Enable authorized keys file"
sudo sed -i "s/#AuthorizedKeysFile/AuthorizedKeysFile/g" /etc/ssh/sshd_config

echo "Disable DNS"
echo "UseDNS no" | sudo tee --append /etc/ssh/sshd_config

echo "add $USER to ssh allow user"
echo "AllowUsers $USER" | sudo tee --append /etc/ssh/sshd_config

sudo chmod 600 ~/.ssh/authorized_keys && chmod 700 ~/.ssh/

sudo service ssh restart
