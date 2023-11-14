#!/bin/bash 

# Configure Settings
cd /home/user1/
gnome-extensions disable ubuntu-dock@ubuntu.com
# gsettings set org.gnome.desktop.interface color-scheme prefer-light
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

cd /usr/share/applications/ 
cp firefox.desktop /home/user1/Desktop/
cp code.desktop /home/user1/Desktop/
cp github-desktop.desktop /home/user1/Desktop/
cp org.gnome.gedit.desktop /home/user1/Desktop/
cp org.gnome.Terminal.desktop /home/user1/Desktop/
cp org.gnome.Calculator.desktop /home/user1/Desktop/
cp org.gnome.Nautilus.desktop /home/user1/Desktop/
cp steam.desktop /home/user1/Desktop/

# cd /.local/share/applications/ 
# cp jetbrains-toolbox.desktop /home/user1/Desktop/
# cp jetbrains-idea-ce.desktop /home/user1/Desktop/

cd /home/user1/Desktop/
FILES="*.desktop"
for f in $FILES
do
    gio set $f metadata::trusted true
done
chmod +x *.desktop

# gsettings set org.gnome.desktop.interface color-scheme prefer-dark
# gsettings set org.gnome.desktop.interface color-scheme prefer-light
# gsettings get org.gnome.shell favorite-apps

# sudo bash -x config.sh 
