# install packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y bash 
sudo apt-get install -y tree 
sudo apt-get install -y vim 
sudo apt-get install -y wget
sudo apt-get install -y curl 
sudo apt-get install -y grep 
sudo apt-get install -y sed 
sudo apt-get install -y zip 
sudo apt-get install -y unzip 
sudo apt-get install -y gzip 
sudo apt-get install -y tar 
sudo apt-get install -y gawk 
sudo apt-get install -y ssh 
sudo apt-get install -y chromium-browser 
sudo apt-get install -y ruby-full 
sudo apt-get install -y gem 
sudo apt-get install -y gnome-screenshot

# install gnome terminal 
sudo apt-get install -y gnome-terminal
sudo apt-get install -y language-pack-gnome-en 
sudo apt-get install -y language-pack-en
sudo apt-get install -y locales

# set dotfiles
cp dotfiles/bash_profile ~/.bash_profile
cp dotfiles/bashrc ~/.bashrc
cp dotfiles/tmux.conf ~/.tmux.conf
cp dotfiles/vimrc ~/.vimrc

# setup a new vim environment
cd ~
rm -rf .vim
mkdir .vim

# install vim color palette
cd ~
git clone https://github.com/tomasr/molokai.git
mkdir .vim/colors
mv molokai/colors/molokai.vim .vim/colors
rm -rf molokai

# configure vundle in vim
cd ~
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

#set natural scrolling ubuntu
gsettings set org.gnome.desktop.peripherals.touchpad natural-scroll true

# for installing sublime text 3 (check version)
sudo apt-get install -y software-properties-common apt-transport-https
sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

# things to do ???
# .proxyoff
# .proxyon
# setup tmux
