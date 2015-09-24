echo "Now script going to install all the necessary fiel for rails development"
echo "Start to add some necessary libraries to system"
sudo apt-get update
sudo apt-get --ignore-missing install build-essential git-core curl openssl libssl-dev libcurl4-openssl-dev zlib1g zlib1g-dev libreadline-dev libreadline6 libreadline6-dev libyaml-dev libsqlite3-dev libsqlite3-0 sqlite3 libxml2-dev libxslt1-dev python-software-properties libffi-dev libgdm-dev libncurses5-dev automake autoconf libtool bison postgresql postgresql-contrib libpq-dev pgadmin3 libc6-dev nodejs -y

echo "adding node.js runtime. give password when asked"
sudo add-apt-repository ppa:chris-lea/node.js

echo "Installs ImageMagick for image processing"
sudo apt-get install imagemagick --fix-missing -y

echo "Installs rvm for version management"
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

echo "Installs latest version of ruby"
rvm install ruby --latest

echo "Installs latest version of rails"
gem install bundler
gem install rails

echo "Installs latest version of mysql"
sudo apt-get install mysql-server mysql-client libmysqlclient-dev

echo "Installs sublime text editor"
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

echo "Installs some famous gems"
gem install carrrierwave
gem isntall rmagick
gem install devise


