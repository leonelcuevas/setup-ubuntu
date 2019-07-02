#!/usr/bin/env bash

echo -e "\e[1;31mInstalling Visual Studio Code\e[0m"

# installs visual studio code
sudo apt-get -y update
sudo apt-get -y upgrade

sudo apt-get -y install software-properties-common
sudo apt-get -y install apt-transport-https

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt-get -y update
sudo apt-get -y install code
