#!/usr/bin/env bash

sudo apt-get -y update
sudo apt-get -y install automake
sudo apt-get -y install build-essential
sudo apt-get -y install pkg-config
sudo apt-get -y install libevent-dev
sudo apt-get -y install libncurses5-dev

rm -rf /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install
cd -
rm -rf /tmp/tmux
