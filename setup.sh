# for crouton shared files
cat "~/Downloads/shared ~/shared" > /etc/crouton/shared

# install packages
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y tree vim wget

# set dotfiles
cp dotfiles/bash_profile ~/.bash_profile
cp dotfiles/bashrc ~/.bashrc
cp dotfiles/tmux.conf ~/.tmux.conf
cp dotfiles/vimrc ~/.vimrc
rm -rf dotfiles

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


# things to do ???
# .proxyoff
# .proxyon
# setup rvm
# setup tmux
