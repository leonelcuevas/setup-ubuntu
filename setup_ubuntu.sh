#!/usr/bin/env bash

# install packages
sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y install bash
sudo apt-get -y install tree
sudo apt-get -y install vim
sudo apt-get -y install wget
sudo apt-get -y install curl
sudo apt-get -y install grep
sudo apt-get -y install sed
sudo apt-get -y install zip
sudo apt-get -y install unzip
sudo apt-get -y install gzip
sudo apt-get -y install tar
sudo apt-get -y install gawk
sudo apt-get -y install ssh
sudo apt-get -y install xclip
sudo apt-get -y install chromium-browser
sudo apt-get -y install ruby-full
sudo apt-get -y install gem
sudo apt-get -y install gnome-screenshot

# install gnome terminal
sudo apt-get -y install gnome-terminal
sudo apt-get -y install language-pack-gnome-en
sudo apt-get -y install language-pack-en
sudo apt-get -y install locales

# set dotfiles
cp dotfiles/bash_profile ~/.bash_profile
cp dotfiles/bashrc ~/.bashrc
cp dotfiles/tmux.conf ~/.tmux.conf
cp dotfiles/vimrc ~/.vimrc

# setup a new vim environment
cd ~
rm -rf ~/.vim
mkdir ~/.vim

# install vim color palette
cd ~
git clone https://github.com/tomasr/molokai.git
mkdir ~/.vim/colors
mv molokai/colors/molokai.vim ~/.vim/colors
rm -rf molokai

# configure vundle in vim
cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#set natural scrolling ubuntu
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true


# things to do ???
# .proxyoff
# .proxyon