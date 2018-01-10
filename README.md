# setup_ubuntu

For crouton: 
```
sudo sh ~/Downloads/crouton -r xenial -t unity-desktop,xiwi,touch
sudo startunity
```

In Ubuntu:
```
cd ~
sudo apt-get -y install git-all 
git clone https://github.com/leonelcuevas/setup-ubuntu.git
cd setup-ubuntu
chmod +x setup.sh
./setup.sh
```

Cleanup and system restart to apply changes:
```
cd ~
rm -rf setup-ubuntu
sudo dpkg-reconfigure locales
```
In the dpkg-reconfigure screen, hit enter at the first prompt and select "en_US.UTF-8" as the default for the second prompt. Finally restart the chroot (log out and log in again).
