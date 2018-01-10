# install packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y tree vim wget tee ssh chromium-browser ruby-full gnome-screenshot

# install gnome terminal 
sudo apt-get install -y gnome-terminal
sudo apt-get install -y language-pack-gnome-en language-pack-en
sudo apt-get install -y locales

# set dotfiles
cp dotfiles/bash_profile ~/.bash_profile
cp dotfiles/bashrc ~/.bashrc
cp dotfiles/tmux.conf ~/.tmux.conf
cp dotfiles/vimrc ~/.vimrc
rm -rf dotfiles

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
sudo add-apt-repository ppa:webupd8team/sublime-text-3
sudo apt-get update
sudo apt-get install -y sublime-text-installer

# things to do ???
# .proxyoff
# .proxyon
# setup rvm
# setup tmux
