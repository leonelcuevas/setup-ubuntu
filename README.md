# Setup Ubuntu Development Environment 

## Crouton
For crouton: 
```
sudo sh ~/Downloads/crouton -r xenial -t unity,touch
# or -> sudo sh ~/Downloads/crouton -r xenial -t unity-desktop,xiwi,touch
sudo startunity
```

Remove a chroot:
```
sudo edit-chroot -a # to list chroot names
sudo delete-chroot <name>
```

## Packages, dotfiles, configs, terminal and Sublime Text
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


## Tmux
Optionally download and setup tmux by running (you will be asked for your root password at the beginning):
```
cd ~/setup-ubuntu
./setup_tumux.sh
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

