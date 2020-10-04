echo "Now script is going to install the necessary packages for Ruby on Rails development"
echo "Started to update system libraries. Please enter password if required"
sudo apt-get update

echo "Adding build essentials"
sudo apt-get --ignore-missing install build-essential git-core curl openssl libssl-dev libcurl4-openssl-dev zlib1g zlib1g-dev libreadline-dev libreadline6 libreadline6-dev libyaml-dev libsqlite3-dev libsqlite3-0 sqlite3 libxml2-dev libxslt1-dev python-software-properties libffi-dev libgdm-dev libncurses5-dev automake autoconf libtool bison postgresql postgresql-contrib libpq-dev pgadmin3 libc6-dev nodejs -y

echo "adding node.js runtime"
sudo add-apt-repository ppa:chris-lea/node.js

echo "Installing RVM (Ruby Version Manager)"
gpg2 --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm

echo "Installing latest version of Ruby"
rvm install ruby --latest

echo "Installing latest version of Rails"
gem install bundler
gem install rails --no-ri --no-rdoc

echo "Installing Git - version control system"
sudo apt-get install git

echo "Installing latest version of mysql"
sudo apt-get install mysql-server mysql-client libmysqlclient-dev

echo "Installing sublime-text editor version 3"
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install sublime-text-installer

echo "Installing ImageMagick for image processing"
sudo apt-get install imagemagick --fix-missing -y

echo "Installing required gems - carrierwave, rmagick, devise"
gem install carrrierwave
gem install rmagick
gem install devise

echo "Yeahhh!! Completed!!!!!!!!!!!!!!!!!"
