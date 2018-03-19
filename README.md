```
  _ __                      _ __                     ___
 /// //7      _    /7      /// / _   _     _//_ __  / o.)     ()/7 _//
/ U //o\ /7/7/ \/7/_7/7/7 / ` /,'o| / \/7,'o/ \V / / o \ /7/7/7//,'o/
\_,'/_,'/__//_n_/// /__/ /_n_/ |_,7/_n_/|__/   )/ /___,'/__/////|__/
                                              //
```

# Basic Config On Ubuntu 16.04 #

### install `oh-my-zsh`

```
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="sammy"/ZSH_THEME="ys"/' ~/.zshrc
sudo chsh -s /bin/zsh
```

### tmux conf

install latest tmux
`sh -c "$(curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/tmux_latest_install.sh)"`

load custom bash alias and configure for current user
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
# load custom bash alias and configure for current user
if [ -f ~/.git-alias ]; then
    source ~/.git-alias
fi
" >> ~/.zshrc
```

### python alias

```
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/py-alias -o ~/.py-alias

echo "
# load custom bash alias and configure for current user
if [ -f ~/.py-alias ]; then
    source ~/.py-alias
fi
" >> ~/.zshrc
```

### k8s alias

```
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/k8s-alias -o ~/.k8s-alias

echo "
# load custom bash alias and configure for current user
if [ -f ~/.k8s-alias ]; then
    source ~/.k8s-alias
fi
" >> ~/.zshrc
```
