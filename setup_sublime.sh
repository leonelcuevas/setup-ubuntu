#!/usr/bin/env bash

# installs sublime text 3 (check version)
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install software-properties-common
sudo apt-get -y install apt-transport-https
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get -y update
sudo apt-get -y install sublime-text-installer