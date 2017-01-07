```
  _ __                      _ __                     ___
 /// //7      _    /7      /// / _   _     _//_ __  / o.)     ()/7 _//
/ U //o\ /7/7/ \/7/_7/7/7 / ` /,'o| / \/7,'o/ \V / / o \ /7/7/7//,'o/
\_,'/_,'/__//_n_/// /__/ /_n_/ |_,7/_n_/|__/   )/ /___,'/__/////|__/
                                              //
```

Run your Rails Application On Ubuntu

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

# Database
mysql: sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/install_mysql.sh`"
psql : sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/install_psql.sh`"
pg-9.5 : sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/install_pg_9.5.sh`"

# install nginx with passenger
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/install_nginx_with_passenger.sh`"

# nginx startup
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/nginx_init.sh`"


# for bash conf
echo "`curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/bash_custom.conf`" > ~/.custom_config

echo "
# load custom bash alias and configure for current user
if [ -f ~/.custom_config ]; then
    source ~/.custom_config
fi
" >> ~/.zshrc

# custom vim
`curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/vim.conf -o ~/.vimrc`

# for git conf
echo "`curl -fsSL https://raw.githubusercontent.com/lexuszhi1990/ubuntu-handy-build/master/git.conf`" > ~/.gitconfig
```

## Requirements

* ubuntu 16.04 && 14.04

## Todo

* ~~add nginx init script~~
* refactor
* write a better README

## Follow-up

##### Update your `nginx.conf` like below
```
server {
    listen       80;
    server_name  domain.com; #Your site domain
    rails_env    production; #Rails deploy environment
    root         /var/www/your_site/current/public; #Rails app pubilc folder path
    passenger_enabled on;

    # Comment or delete these lines.
    # location / {
    #     root   html;
    #     index  index.html index.htm;
    # }
}
```

##### Authorize application folder to deploy user
_I usually place the app in `/var/www`_
```
$ sudo chown -R deployer:deployer /var/www
```

#### Create User and Database for pg
```
$ sudo su - postgres // Switch to postgres user
$ psql // Sign in postgres background
```

```
postgres=# \password postgres // Setup password for postgres user
postgres=# CREATE USER deployer WITH PASSWORD 'password'; // Create a database user for Linux user
postgres=# ALTER USER deployer WITH CREATEDB; // Enable create db
postgres=# CREATE DATABASE exampledb OWNER deployer; // Create database
postgres=# GRANT ALL PRIVILEGES ON DATABASE exampledb to deployer; // Authorize deployer user
```

## License
Copyright (c) Edward Chan.
