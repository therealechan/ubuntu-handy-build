# https://www.postgresql.org/download/linux/ubuntu/
# https://www.howtoforge.com/tutorial/how-to-install-postgresql-95-on-ubuntu-12_04-15_10/
# local   all             all                                md5

sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ `lsb_release -cs`-pgdg main" >> /etc/apt/sources.list.d/pgdg.list'
wget -q https://www.postgresql.org/media/keys/ACCC4CF8.asc -O - | sudo apt-key add -

sudo apt-get update

sudo apt-get install -y libpq-dev

sudo apt-get install postgresql postgresql-contrib -y
