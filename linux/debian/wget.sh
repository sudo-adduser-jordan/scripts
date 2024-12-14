#!/bin/bash

sudo apt update -y
sudo apt upgrade -y
sudo apt install nala -y

# wget -O ~/Downloads/discord.deb "https://discord.com/api/download?platform=linux&format=deb"
# wget -O ~/Downloads/code.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64" 
# wget -O ~/Downloads/chrome.deb "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb" 
# wget -O ~/Downloads/ulauncher.deb "https://github.com/Ulauncher/Ulauncher/releases/download/5.15.7/ulauncher_5.15.7_all.deb" 
# wget -O ~/Downloads/code.deb "https://github.com/shiftkey/desktop/releases/download/release-3.4.8-linux1/GitHubDesktop-linux-amd64-3.4.8-linux1.deb" 

sudo nala install ~/Downloads/*.deb -y

# rm -rf ~/Downloads/*.deb

