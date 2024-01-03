#!/bin/bash  

apt update -y
apt upgrade -y
apt install nala -y

nala install hyper -y
nala install git -y
nala install btop -y
nala install neofetch -y
nala install steam -y
nala install gcc -y
nala install golang -y
nala install node -y
nala install python3 -y
nala install pipx -y
nala install openjdk -y
nala install gimp -y

nala install flatpak -y
flatpak install flathub com.visualstudio.code -y
flatpak install flathub io.github.shiftey.Desktop -y
flatpak install flathub org.gnome.Extensions -y
flatpak install flathub com.mattjakeman.ExtensionManager -y
flatpak install flathub io.github.gamingdoom.Datcord -y
flatpak install flathub com.spotify.Client -y
flatpak install flathub org.videolan.VLC -y
flatpak install flathub com.obsproject.Studio -y
flatpak install flathub org.blender.Blender -y
flatpak install flathub com.bitwarden.desktop -y
flatpak install flathub us.zoom.Zoom -y
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community -y
flatpak install flathub org.gnome.Builder -y