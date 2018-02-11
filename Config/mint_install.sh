#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo " ****************************************************************"
  echo " ********* Please run as root  : sudo ./mint_install.sh *********"
  echo " ****************************************************************"
  exit
fi

# Create a tmp config folder to downlaod config files
mkdir tmp-config-system
cd tmp-config-system

# VPN
echo " --------------------------------------------------"
echo " ---------------- VPN installation ----------------"
echo " --------------------------------------------------"
mkdir vpn
wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/DE_Frankfurt
wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/ES_Madrid
wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/JP_Tokyo
wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/Panama
wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/UAE_Dubai
wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/US_LosAngles
chmod 600 vpn/*
cp vpn/* /etc/NetworkManager/system-connections/
service network-manager restart
echo " --------------------------------------------------\n\n"

# SSH
mkdir .ssh
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/config
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/dell_mint
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/dell_mint.pub
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/known_hosts
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/p10_android.key
chmod 600 ~/.ssh/dell_mint*

#bashrc
wget -P ~/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/.bashrc

# Create folder to mount iso images
mkdir /media/iso

# Download fillezilla config
wget https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/FileZilla/FileZilla.xml

apt-get --assume-yes install vim git gitk virtualbox shutter deluge gparted guake gthumb dconf-cli filezilla unetbootin

# git configuration
git config --global core.editor "vim"
git config --global user.name "Karim SAD"
git config --global user.email ksad.karim@gmail.com


# Mac OS theme
add-apt-repository ppa:noobslab/macbuntu -y
apt-get update
apt-get --assume-yes install macbuntu-os-icons-lts-v7 macbuntu-os-ithemes-lts-v7


# Slingscold Launchpad
add-apt-repository ppa:noobslab/macbuntu -y
apt-get update
apt-get --assume-yes install slingscold

# Synapse 
add-apt-repository ppa:synapse-core/ppa -y
apt-get update
apt-get --assume-yes install synapse

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
apt-get --assume-yes install google-chrome-stable

# FoxitReader
wget http://cdn01.foxitsoftware.com/pub/foxit/reader/desktop/linux/2.x/2.1/en_us/FoxitReader2.1.0805_Server_x64_enu_Setup.run.tar.gz
tar xzvf FoxitReader*.tar.gz
sudo chmod a+x FoxitReader*.run
./FoxitReader.*.run

# Cinnamon settings
wget https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/cinnamon_settings
dconf load /org/cinnamon/ < cinnamon_settings
