cd ~
gnome-extensions disable ubuntu-dock@ubuntu.com
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

sudo apt-get install git


sudo apt install curl
sudo apt install libfuse2
sudo apt-get install gdebi-core 

cd /home/user1/Downloads
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb



sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders











gsettings set org.gnome.desktop.interface color-scheme prefer-dark

gsettings set org.gnome.desktop.interface color-scheme prefer-light


gsettings get org.gnome.shell favorite-apps





sudo apt-get install gnome-tweaks


/home/user1/Github

sudo git clone https://github.com/EliverLara/candy-icons /home/user1/Downloads/candy-theme