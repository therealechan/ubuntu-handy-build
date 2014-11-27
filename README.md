```
     __  ____                __           __                    __         __          _ __    __
    / / / / /_  __  ______  / /___  __   / /_  ____ _____  ____/ /_  __   / /_  __  __(_) /___/ /
   / / / / __ \/ / / / __ \/ __/ / / /  / __ \/ __ `/ __ \/ __  / / / /  / __ \/ / / / / / __  / 
  / /_/ / /_/ / /_/ / / / / /_/ /_/ /  / / / / /_/ / / / / /_/ / /_/ /  / /_/ / /_/ / / / /_/ /  
  \____/_.___/\__,_/_/ /_/\__/\__,_/  /_/ /_/\__,_/_/ /_/\__,_/\__, /  /_.___/\__,_/_/_/\__,_/   
                                                              /____/                             
```
Run your Rails Application with Passenger + Nginx + MySQL

## Usage

```sh
# basic config
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/basic_config.sh`"

# clone this repo and do this locally
$ rake upload_ssh_key

# ssh config
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/ssh_config.sh`"

# basic env
sh -c "`curl -fsSL https://github.com/chankaward/ubuntu-handy-build/raw/master/basic_env.sh`"

# ruby env
bash -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/ruby_env.sh`"

# install nginx
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/install_nginx.sh`"

# nginx startup
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/nginx_init.sh`"
```

## Requirements

* ubuntu 12.04 && 14.04

## Todo

* ~~add nginx init script~~
* refactor
* write a better README

## License
Copyright (c) Edward Chan.
