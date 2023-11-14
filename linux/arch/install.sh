#!/bin/bash  
pacman -Syu --noconfirm
pacman -S git --noconfirm
pacman -S gufw --noconfirm
pacman -S neofetch --noconfirm
pacman -S base-devel --noconfirm
pacman -S firefox --noconfirm
pacman -S intellij-idea-community-edition --noconfirm
pacman -S code --noconfirm

git clone https://aur.archlinux.org/github-desktop-bin.git  ~/Downloads/github-desktop/
chmod 777 ~/Downloads/github-desktop/
cd ~/Downloads/github-desktop/
makepkg -sri --noconfirm

git clone https://aur.archlinux.org/openrgb.git  ~/Downloads/openrgb/
chmod 777 ~/Downloads/openrgb/
cd ~/Downloads/openrgb/
makepkg -sri --noconfirm