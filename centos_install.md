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

# Virtual Box
sudo yum install kernel-devel kernel-headers make patch gcc
sudo wget https://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
sudo yum install VirtualBox-5.2

# FileZilla
sudo yum -y install epel-release
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
no rpm ==> convert from deb : https://www.tecmint.com/convert-from-rpm-to-deb-and-deb-to-rpm-package-using-alien/

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
