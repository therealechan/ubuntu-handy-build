#!/bin/bash

# install rvm and ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc

echo "============================================================"
echo "Now you can use rvm to install ruby"
echo "Please run following command to finish install rvm and ruby"
echo
echo "source ~/.bashrc"
echo
echo "rvm requirements"
echo
echo "rvm install 2.0.0"
echo
echo "rvm use 2.0.0 --default"
