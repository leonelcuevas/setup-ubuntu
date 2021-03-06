# Setup Ubuntu Development Environment 

## Crouton

For crouton: 
Download latest version from https://github.com/dnschneid/crouton. Then:
```
sudo sh ~/Downloads/crouton -r xenial -t gnome,touch
# or -> sudo sh ~/Downloads/crouton -r xenial -t unity,touch
# or -> sudo sh ~/Downloads/crouton -r xenial -t unity-desktop,xiwi,touch
```

To see all the installation options use: 
```
sudo sh ~/Downloads/crouton -t list  
```

To start the chroot:
```
sudo startgnome
# if you installed unity or other environment use the appropiate command. For example:
sudo startunity 
```

In case of need, remove a previous chroot:
```
sudo edit-chroot -a # to list chroot names
sudo delete-chroot <name>
```

## Packages, dotfiles, configs and terminal
In Ubuntu:
```
cd ~
sudo apt-get -y install git
git clone https://github.com/leonelcuevas/setup-ubuntu.git
cd setup-ubuntu
chmod +x setup_ubuntu.sh
./setup_ubuntu.sh
```
You will be asked for your root password at the beginning.

Perform locale configuration for gnome terminal:
```
cd ~
sudo dpkg-reconfigure locales
```
In the dpkg-reconfigure screen, hit enter at the first prompt and select "en_US.UTF-8" as the default for the second prompt. At this point restart the chroot (log out and log in again) to apply all changes.

## Text Editor
Install the text editor of your choice. Included are scripts to install Visual Studio Code and Sublime Text.

### Visual Studio Code
To install Visual Studio Code run:
```
cd ~/setup-ubuntu
./setup_vscode.sh
```

### Sublime Text
To install Sublime Text run:
```
cd ~/setup-ubuntu
./setup_sublime.sh
```


## Tmux
Optionally download and setup tmux by running (you will be asked for your root password at the beginning):
```
cd ~/setup-ubuntu
./setup_tmux.sh
```

## Ruby, RVM, Rails, Gosu
Optionally setup rvm, ruby, as well as rails and gosu by running:
```
cd ~/setup-ubuntu
./setup_ruby.sh
```
You will be asked for your root password at the beginning.
And also to set a password for the postgresql user. Then the postgresql service will be started.


## Github SSH
Optionally setup github ssh configuration by running:
```
cd ~/setup-ubuntu
./setup_github_ssh.sh
```
You will be propmted for a passphrase for ssh keys, and then once more to add it to the ssh-agent
After doing that, login on Github website and do the following:
> Go to settings -> SSH and GPG keys
> Add new SSH Key
> Title: "Ubuntu Development Environment" or any other name
> Key: Paste the key. Should already be in clipboard after ./setup_github_ssh.sh. If not run: xclip -sel clip < ~/.ssh/id_rsa.pub
> Click Add SSH key
> May need to confirm GitHub password

You can test the connection by running:
```
ssh -T git@github.com
```

## Cleanup
Clean up the directory
```
cd ~
rm -rf setup-ubuntu
```
Finally close the terminal and open a new one. All changes and configurations should be loaded now.

