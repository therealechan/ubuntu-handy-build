#!/bin/bash

# install rvm and ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc

echo "================================================================="
echo "================================================================="
echo
echo "== Please run following command to finish install rvm and ruby =="
echo "============================ Start =============================="
echo
echo "Run $ source ~/.bashrc"
echo
echo "Run $ rvm requirements"
echo
echo "Run $ rvm install 2.3.1"
echo
echo "Run $ rvm use 2.3.1 --default"
echo
echo "Run $ gem install bundler"
echo
echo "============================= End ==============================="
echo "================================================================="
echo "================================================================="
