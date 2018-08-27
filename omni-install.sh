#!/usr/bin/env bash

# install oh-my-zsh and change theme as ys
sudo apt-get install -y zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' ~/.zshrc

# install latest tmux and download config
sudo bash -c "$(curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/tmux_latest_install.sh)"
# apt install tmux # for ubuntu 1804
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/tmux.conf -o ~/.tmux.conf

# download vim config
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/vimrc -o ~/.vimrc

# download global gitconf
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/gitconfig -o ~/.gitconfig
# download git aliases
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/git-alias -o ~/.git-alias
# add git alias to configuration
echo "
# load custom git alias
if [ -f ~/.git-alias ]; then
    source ~/.git-alias
fi
" >> ~/.zshrc

# download py aliases
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/py-alias -o ~/.py-alias
# add py alias to configuration
echo "
# load custom py alias
if [ -f ~/.py-alias ]; then
    source ~/.py-alias
fi
" >> ~/.zshrc

# download docker aliases
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/docker-alias -o ~/.docker-alias
# add docker alias to configuration
echo "
# load custom docker alias
if [ -f ~/.docker-alias ]; then
    source ~/.docker-alias
fi
" >> ~/.zshrc
