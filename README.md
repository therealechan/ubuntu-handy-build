```
  _ __                      _ __                     ___
 /// //7      _    /7      /// / _   _     _//_ __  / o.)     ()/7 _//
/ U //o\ /7/7/ \/7/_7/7/7 / ` /,'o| / \/7,'o/ \V / / o \ /7/7/7//,'o/
\_,'/_,'/__//_n_/// /__/ /_n_/ |_,7/_n_/|__/   )/ /___,'/__/////|__/
                                              //
```

Basic Config On Ubuntu 16.04

### install `oh-my-zsh`

```
sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i 's/ZSH_THEME="sammy"/ZSH_THEME="ys"/' ~/.zshrc
sudo chsh -s /bin/zsh
```

### tmux conf

load custom bash alias and configure for current user
```
echo "`curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/tmux.conf`" > ~/.tmux.conf
echo "
if [ -f ~/.tmux.conf ]; then
    source ~/.tmux.conf
fi
" >> ~/.bashrc
```

### vim conf

custom vimrc
`curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/vim.conf -o ~/.vimrc`


### git config

```
# for git conf
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/git.conf -o ~/.gitconfig

# for git conf
curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/git-alias.sh -o ~/.git-alias

echo "
# load custom bash alias and configure for current user
if [ -f ~/.git-alias ]; then
    source ~/.git-alias
fi
" >> ~/.zshrc
```
