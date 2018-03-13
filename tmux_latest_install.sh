#!/bin/sh

# http://bogdanvlviv.com/posts/tmux/how-to-install-the-latest-tmux-on-ubuntu-16_04.html
sudo apt-get -y remove tmux
sudo apt-get install libevent-dev libncurses-dev automake

rm -fr ~/tmux
git clone https://github.com/tmux/tmux.git ~/tmux
cd ~/tmux
sh autogen.sh
./configure && make
sudo make install
cd
