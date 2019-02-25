# Centos install packages

# Chrome
vim /etc/yum.repos.d/google-chrome.repo

```repo
[google-chrome]
name=google-chrome
baseurl=http://dl.google.com/linux/chrome/rpm/stable/x86_64
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
```
```bash
yum install google-chrome-stable
```
# shutter
sudo yum --enablerepo=nux-dextop install shutter

# Virtual Box
sudo yum install kernel-devel kernel-headers make patch gcc
sudo wget https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
sudo yum install VirtualBox-5.2

# FileZilla
sudo yum -y install epel-release perl-MIME-Lite
sudo yum -y install filezilla

# Vlc
yum install https://dl.fedoraproject.org/pub/epel/epel-release-latest-6.noarch.rpm
yum install https://download1.rpmfusion.org/free/el/rpmfusion-free-release-6.noarch.rpm
yum install -y vlc

# Kodi
sudo yum install ftp://ftp.pbone.net/mirror/li.nux.ro/download/nux/dextop/retired/kodi-14.2-7.el7.nux.x86_64.rpm

# Slack
wget https://downloads.slack-edge.com/linux_releases/slack-3.3.7-0.1.fc21.x86_64.rpm
sudo yum install -y slack-3.3.7-0.1.fc21.x86_64.rpm

# Skype
wget https://repo.skype.com/latest/skypeforlinux-64.rpm
sudo yum install -y skypeforlinux-64.rpm

# SublimText
sudo rpm -v --import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo yum-config-manager --add-repo https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo yum install sublime-text

# Atom
wget https://atom-installer.github.com/v1.34.0/atom.x86_64.rpm?s=1546643671&ext=.rpm
sudo yum install -y atom.x86_64.rpm?s=1546643671&ext=.rpm

# Boostnote
# installgDrive via  https://www.insynchq.com/downloads to 
no rpm ==> convert from deb : https://www.tecmint.com/convert-from-rpm-to-deb-and-deb-to-rpm-package-using-alien/
wget https://github.com/SkYNewZ/Boostnote-packages/releases/download/v0.11.15/boostnote-0.11.15.x86_64.rpm

# Drop Box
wget https://linux.dropbox.com/packages/fedora/nautilus-dropbox-2019.01.31-1.fedora.x86_64.rpm
sudo yum install -y nautilus-dropbox-2019.01.31-1.fedora.x86_64.rpm

# Ulauncher
wget https://github-production-release-asset-2e65be.s3.amazonaws.com/35363625/702fdb00-c683-11e8-85eb-f76f5de6b617?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20190225%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20190225T222231Z&X-Amz-Expires=300&X-Amz-Signature=f7b744a68c4b3367c16b5e6699d2bad69bea3e6942af238dee778748fce77f8f&X-Amz-SignedHeaders=host&actor_id=0&response-content-disposition=attachment%3B%20filename%3Dulauncher_4.3.1.r4_centos7.rpm&response-content-type=application%2Foctet-stream
sudo yum install epel-release && sudo yum install ulauncher_4.3.1.r4_centos7.rpm

# Visual Studio Code
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo yum check-update
sudo yum install code

# Balena Etcher (boot iso)
wget https://github.com/balena-io/etcher/releases/download/v1.4.9/balena-etcher-electron-1.4.9-linux-ia32.zip

# Add master pdf
https://www2.yggtorrent.gg/torrent/application/linux/282498-master+pdf+editor+5+0+36+multi-langues+keygen+linux

# IntelliJ

# Install VNC
wget https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.19.107-Linux-x64.rpm

# Install gnome extension
yum install epel-release
yum install git cmake coreutils pygobject2 python-requests jq

Afterwards as user:

Code: Select all

git clone https://gitlab.gnome.org/GNOME/chrome-gnome-shell.git
cd chrome-gnome-shell/
mkdir build
cd build
cmake -DCMAKE_INSTALL_PREFIX=/usr -DBUILD_EXTENSION=OFF ../
su
make install
exit

# uninstall windows list bar
sudo yum erase gnome-shell-extension-window-list 

# install angry ip scanner
https://github.com/angryip/ipscan/releases/download/3.5.5/ipscan-3.5.5-1.x86_64.rpm

# Install Deepin screenshot
wget http://download-ib01.fedoraproject.org/pub/fedora/linux/releases/29/Everything/x86_64/os/Packages/d/deepin-screenshot-4.0.10.4-4.fc29.x86_64.rpm

# Install Thunar explorer
https://centos.pkgs.org/7/epel-x86_64/Thunar-1.6.16-1.el7.x86_64.rpm.html

#Install Deluge
sudo vim /etc/yum.repos.d/deluge.repo

[deluge]
name=deluge
baseurl=http://pkgrepo.linuxtech.net/el6/release/
enabled=1
gpgcheck=1
gpgkey=http://pkgrepo.linuxtech.net/el6/release/RPM-GPG-KEY-LinuxTECH.NET


sudo yum list deluge
sudo yum install deluge

# Install windscribe
https://fra.windscribe.com/guides/linux

# Intsall python-pip
sudo yum install python-pip

# Krita image Editor
wget http://mirrors.dotsrc.org/kde/stable/krita/4.1.7/krita-4.1.7-x86_64.appimage
wget https://upload.wikimedia.org/wikipedia/commons/thumb/3/31/Calligra_Krita_icon.svg/600px-Calligra_Krita_icon.svg.png