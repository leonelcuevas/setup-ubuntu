#!/usr/bin/env bash

echo -e "\e[1;31mConfiguring tmux environment\e[0m"

sudo apt-get -y update
sudo apt-get -y install automake
sudo apt-get -y install build-essential
sudo apt-get -y install pkg-config
sudo apt-get -y install libevent-dev
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install bison
sudo apt-get -y install byacc

rm -rf /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install
cd -
rm -rf /tmp/tmux
