#!/bin/bash

# install rvm and ruby
gpg --keyserver hkp://keys.gnupg.net --recv-keys D39DC0E3

\curl -sSL https://get.rvm.io | bash -s stable

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc

rvm requirements

echo "============================================================"
echo "Now you can use rvm to install ruby"
echo ""
echo "source ~/.bashrc"
echo "rvm install 2.0.0"
echo "rvm use 2.0.0 --default"
