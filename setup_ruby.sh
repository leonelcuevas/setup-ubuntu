#!/usr/bin/env bash

# install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable
echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"' >> .bashrc
# rvm get stable --autolibs=enable # to update version when needed

#install ruby, change for the wanted versiom
rvm install 2.4.0
rvm gemset use global
gem update --system
gem update
gem install bundler # for .gemfile
gem install nokogiri # html, css, xml, parser
gem install rails # ruby on rails for web apps
# gem install rails --pre # to install beta versions
gem install gosu # for games


# install postgresql for ruby on rails
sudo apt-get install postgresql postgresql-contrib libpq-dev
sudo/etc/init.d/postgresql start
sudo passwd postgres # set password for postgresql user
# sudo -u postgres psql # to login to  postgresql shell
