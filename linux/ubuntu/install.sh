#!/bin/bash  

# Update and Clean
# System Update and Upgrade
apt update
apt install --fix-missing -y
apt upgrade --allow-downgrades -y
apt full-upgrade --allow-downgrades -y
snap refresh

# System Clean Up
apt install -f
apt autoremove -y
apt autoclean
apt clean

#Purge Snaps
snap remove --purge firefox
snap remove --purge bare
snap remove --purge gnome-3-38-2004
snap remove --purge gnome-42-2204 
snap remove --purge gtk-common-themes
snap remove --purge snap-store
snap remove --purge snapd-desktop-integration
snap remove --purge core20
snap remove --purge core22
snap remove --purge snapd
apt remove --autoremove snapd -y

cat <<EOT >> /etc/apt/preferences.d/nosnap.pref
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOT
# -u ${USERNAME} bash

apt update
apt upgrade

# Install Applications
apt install --install-suggests gnome-software -y
apt install gnome-tweaks
add-apt-repository ppa:mozillateam/ppa -y
apt update
apt install -t 'o=LP-PPA-mozillateam' firefox -y
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

cat <<EOT >> /etc/apt/preferences.d/mozillateamppa
Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 501
EOT

apt install -y git
apt install -y curl

cd /home/user1/Downloads
wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb

apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
apt install apt-transport-https
apt update
apt install code # or code-insiders

# wget -P ~/Downloads/ https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.28.1.15219.tar.gz
# cd ~/Downloads/
# tar -xzf jetbrains-toolbox-1.28.1.15219.tar.gz -C /opt
# cd /opt/jetbrains-toolbox-1.28.1.15219/
# ./jetbrains-toolbox

curl -fsSL https://deb.nodesource.com/setup_18.x | -E bash - &&\
apt-get install -y nodejs
apt install python3 -y
apt install python3-pip -y
apt install golang -y
apt install openjdk-8-jre-headless -y
apt install steam -y

# gsettings set org.gnome.desktop.interface color-scheme prefer-dark
# gsettings set org.gnome.desktop.interface color-scheme prefer-light
# gsettings get org.gnome.shell favorite-apps

# bash -x installer.sh 
