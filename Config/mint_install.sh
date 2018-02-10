#!/bin/bash

apt-get install vim git virtualbox shutter deluge gparted guake gthumb dconf-cli

# git configuration
git config --global core.editor "vim"
git config --global user.name "Karim SAD"
git config --global user.email ksad.karim@gmail.com


# Mac OS theme
add-apt-repository ppa:noobslab/macbuntu
apt-get update
apt-get install macbuntu-os-icons-lts-v7
apt-get install macbuntu-os-ithemes-lts-v7


# Slingscold Launchpad
add-apt-repository ppa:noobslab/macbuntu
apt-get update
apt-get install slingscold

# Synapse 
udo add-apt-repository ppa:synapse-core/ppa
apt-get update
apt-get install synapse

# Skype
wget https://repo.skype.com/latest/skypeforlinux-64.deb
dpkg -i skypeforlinux-64.deb


# TeamViewer
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
dpkg -i teamviewer_amd64.deb

# Gooele Chrome 
sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
apt-get update
apt-get install google-chrome-stable

# FoxitReader
wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.1/en_us/FoxitReader2.1.0805_Server_x64_enu_Setup.run.tar.gz
tar xzvf FoxitReader*.tar.gz
sudo chmod a+x FoxitReader*.run
./FoxitReader.*.run

# SSH
cp -r ssh ~/.ssh

#bashrc
cp .bashrc ~/.bashrc

# Cinnamon settings
dconf load /org/cinnamon/ < cinnamon_settings

# Create folder to mount iso images
mkdir /media/iso
