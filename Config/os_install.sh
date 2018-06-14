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
#echo " --------------------------------------------------"
#echo " ---------------- VPN installation ----------------"
#echo " --------------------------------------------------"
#mkdir vpn
#wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/DE_Frankfurt
#wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/ES_Madrid
#wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/JP_Tokyo
#wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/Panama
#wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/UAE_Dubai
#wget -P vpn/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/vpn/US_LosAngles
#chmod 600 vpn/*
#cp vpn/* /etc/NetworkManager/system-connections/
#service network-manager restart
#echo "Restarting network-manager software ......................................"

# SSH
sleep 10

if [ ! -d "~/.ssh" ]; then
  mkdir ~/.ssh
fi

wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/config
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/dell_7480
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/dell_7480.pub
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/authorized_keys
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/known_hosts
wget -P ~/.ssh/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/ssh/p10_android.key
chmod 600 ~/.ssh/* && chown ksad ~/.ssh/* && chgrp ksad ~/.ssh/*

#bashrc
wget -P ~/ https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/.bashrc

# Create folder to mount iso images
mkdir /media/iso

# Download fillezilla config
wget https://raw.githubusercontent.com/ksad/Dev-Tools/master/Config/FileZilla/FileZilla.xml

# Installing basic packages
apt-get update
apt-get --assume-yes install vim git gitk virtualbox shutter deluge gparted guake gthumb dconf-cli filezilla vlc konsole chrome-gnome-shell com.canonical.notify-osd hardinfo wavebox

# git configuration
git config --global core.editor "vim"
git config --global user.name "Karim SAD"
git config --global user.email "ksad.karim@gmail.com"

# UnetBootin
add-apt-repository -y ppa:gezakovacs/ppa
apt-get update
apt-get --assume-yes install unetbootin

# Kodi
apt-get install software-properties-common
add-apt-repository -y ppa:team-xbmc/ppa
apt-get update
apt-get --assume-yes install kodi

# WhatsApp
wget "https://www.thefanclub.co.za/sites/all/modules/pubdlcnt/pubdlcnt.php?file=https://www.thefanclub.co.za/sites/default/files/public/downloads/whatsapp-webapp_1.0_all.deb&nid=200" --output-document=whatsapp-webapp_1.0_all.deb
dpkg -i whatsapp-webapp_1.0_all.deb

#Nylas mail
wget https://edgehill.s3-us-west-2.amazonaws.com/2.0.32-fec7941/linux-deb/x64/NylasMail.deb
apt-get --assume-yesinstall gir1.2-gnomekeyring-1.0
dpkg -i NylasMail.deb

# Slack
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-3.1.1-amd64.deb
apt-get --assume-yes install libcurl3
dpkg -i slack-desktop-3.1.1-amd64.deb

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

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get --assume-yes install sublime-text

# Atom Editor
wget https://atom.io/download/deb --output-document=atom-amd64.deb
dpkg -i atom-amd64.deb

# Boostnote
wget https://github.com/BoostIO/boost-releases/releases/download/v0.11.4/boostnote_0.11.4_amd64.deb
dpkg -i boostnote_0.11.4_amd64.deb

# DropBox
wget https://linux.dropbox.com/packages/ubuntu/dropbox_2015.10.28_amd64.deb
dpkg -i dropbox_2015.10.28_amd64.deb

# Anydesk
wget https://download.anydesk.com/linux/anydesk_2.9.5-1_amd64.deb?_ga=2.81004247.1501986712.1525006071-650245743.1525006071 --output-document=anydesk_2.9.5-1_amd64.deb
apt-get install libgtkglext1
dpkg -i anydesk_2.9.5-1_amd64.deb

# Nomachine
wget http://download.nomachine.com/download/6.1/Linux/nomachine_6.1.6_9_amd64.deb
dpkg -i nomachine_6.1.6_9_amd64.deb

# Timeshift
apt-add-repository -y ppa:teejee2008/ppa
apt-get update
apt-get install timeshift

# Synapse 
add-apt-repository -y ppa:synapse-core/ppa
apt-get update
apt-get --assume-yes install synapse
