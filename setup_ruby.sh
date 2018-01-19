#!/usr/bin/env bash

# install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> ~/.bashrc
source ~/.profile # to load rvm into path
# rvm get stable --autolibs=enable # to update version when needed


#install ruby, change for the wanted versiom
rvm install 2.4.0
rvm gemset use global
gem update --system
gem update
gem install bundler # for .gemfile support


# install ruby on rails
# dependencies for ruby on rails
gem install nokogiri # html, css, xml, parser
gem install rails # ruby on rails for web apps
# gem install rails --pre # to install beta versions
# install postgresql for ruby on rails
sudo apt-get -y install postgresql
sudo apt-get -y install postgresql-contrib
sudo apt-get -y install libpq-dev
sudo passwd postgres # set password for postgresql user
sudo /etc/init.d/postgresql start
# sudo -u postgres psql # to login to  postgresql shell


# install gosu
# dependencies for gosu
sudo apt-get -y install build-essential libsdl2-dev libsdl2-ttf-dev libpango1.0-dev \
                        libgl1-mesa-dev libopenal-dev libsndfile-dev libmpg123-dev \
                        libgmp-dev
gem install gosu # for games
