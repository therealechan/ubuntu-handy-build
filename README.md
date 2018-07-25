```
  _ __                      _ __                     ___
 /// //7      _    /7      /// / _   _     _//_ __  / o.)     ()/7 _//
/ U //o\ /7/7/ \/7/_7/7/7 / ` /,'o| / \/7,'o/ \V / / o \ /7/7/7//,'o/
\_,'/_,'/__//_n_/// /__/ /_n_/ |_,7/_n_/|__/   )/ /___,'/__/////|__/
                                              //
```

# Basic Config On Ubuntu 18.04 #

### install `oh-my-zsh`

```
sudo apt-get install -y zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# config zsh and update theme to 'ys'
sed -i 's/ZSH_THEME="robbyrussell"/ZSH_THEME="ys"/' ~/.zshrc
```

### tmux conf

install latest tmux (ubuntu 16.04):
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/tmux_latest_install.sh)"`

apt-get install latest tmux(ubuntu 18.04):
`sudo apt install tmux`

load custom bash alias
`curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/tmux.conf -o ~/.tmux.conf`

### vim conf

custom vimrc
`curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/vimrc -o ~/.vimrc`

### git config

```
# for git conf
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/gitconfig -o ~/.gitconfig

# for git conf
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/git-alias -o ~/.git-alias

echo "
# load custom git alias
if [ -f ~/.git-alias ]; then
    source ~/.git-alias
fi
" >> ~/.zshrc
```

### python alias

```
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/py-alias -o ~/.py-alias

echo "
# load custom py alias
if [ -f ~/.py-alias ]; then
    source ~/.py-alias
fi
" >> ~/.zshrc
```

### docker alias
```
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/docker-alias -o ~/.docker-alias

echo "
# load custom docker alias
if [ -f ~/.docker-alias ]; then
    source ~/.docker-alias
fi
" >> ~/.zshrc
```

### k8s alias

```
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/k8s-alias -o ~/.k8s-alias

echo "
# load custom k8s alias
if [ -f ~/.k8s-alias ]; then
    source ~/.k8s-alias
fi
" >> ~/.zshrc
```

### proxy alias

```
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/proxy.sh -o ~/.proxy-alias

echo "
# load custom proxy alias
if [ -f ~/.proxy-alias ]; then
    source ~/.proxy-alias
fi
" >> ~/.zshrc
```
