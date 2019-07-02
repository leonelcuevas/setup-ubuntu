#!/usr/bin/env bash

echo -e "\e[1;31mBeginning setup\e[0m"

# install packages
echo -e "\e[1;31mInstalling base packages\e[0m"
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
echo -e "\e[1;31mInstalling and configuring GNOME Terminal\e[0m"
sudo apt-get -y install gnome-terminal
sudo apt-get -y install language-pack-gnome-en
sudo apt-get -y install language-pack-en
sudo apt-get -y install locales
sudo apt-get install libglib2.0-bin # to use gsettings
dconf write /org/gnome/terminal/legacy/profiles:/:$(gsettings get org.gnome.Terminal.ProfilesList default | cut -d\' -f2)/use-theme-colors false

# set dotfiles
echo -e "\e[1;31mCopying dotfiles\e[0m"
cp dotfiles/bash_profile ~/.bash_profile
cp dotfiles/bashrc ~/.bashrc
cp dotfiles/tmux.conf ~/.tmux.conf
cp dotfiles/vimrc ~/.vimrc

# setup a new vim environment
echo -e "\e[1;31mSetting up VIM environment\e[0m"
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
echo -e "\e[1;31mFinal Ubuntu configurations\e[0m"
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true

echo -e "\e[1;31mDone!\e[0m"
# things to do ???
# .proxyoff
# .proxyon