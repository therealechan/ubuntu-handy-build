```
  _ __                      _ __                     ___              
 /// //7      _    /7      /// / _   _     _//_ __  / o.)     ()/7 _//
/ U //o\ /7/7/ \/7/_7/7/7 / ` /,'o| / \/7,'o/ \V / / o \ /7/7/7//,'o/ 
\_,'/_,'/__//_n_/// /__/ /_n_/ |_,7/_n_/|__/   )/ /___,'/__/////|__/  
                                              //                      
```

Run your Rails Application with Passenger + Nginx + MySQL or PostgreSQL

## Usage

Make sure you have install curl before you start...

```sh
$ apt-get install curl
```

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
## MySQL
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/install_mysql.sh`"

## PostgreSQL
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/install_psql.sh`"

# install nginx
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/install_nginx.sh`"

# nginx startup
sh -c "`curl -fsSL https://raw.githubusercontent.com/chankaward/ubuntu-handy-build/master/nginx_init.sh`"
```

## Requirements

* ubuntu 12.04 && 14.04 (currently not support 16.04)

## Todo

* ~~add nginx init script~~
* refactor
* write a better README

## Follow-up

##### Update your `/opt/nginx/conf/nginx.conf` be like
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
$ sudo chown -R $(whoami):$(whoami) /var/www
```

#### Create User and Database for pg
```
$ sudo su - postgres // Switch to postgres user
$ psql // Sign in postgres background
```

```
postgres=# \password postgres // Setup password for postgres user
postgres=# CREATE USER deployer WITH PASSWORD 'password'; // Create a database user for Linux user
postgres=# CREATE DATABASE exampledb OWNER deployer; // Create database
postgres=# GRANT ALL PRIVILEGES ON DATABASE exampledb to deployer; // Authorize deployer user
```

## License
Copyright (c) Edward Chan.
