#!/bin/bash  

# ╭─────────────────────────────────────.★..─╮
#          	   *Install Script*
# ╰─..★.─────────────────────────────────────╯

#         _.-'78o``"`--._
#     ,o888o.  .o888o,   ''-.
#   ,88888P  `78888P..______.]
#  /_..__..----""        __.'
#  `-._       /""| _..-''
#      "`-----\  `\
#              |   ;.-""--..
#              | ,8o.  o88. `.
#              `;888P  `788P  :
#        .o""-.|`-._         ./
#       J88 _.-/    ";"-P----'
#       `--'\`|     /  /
#           | /     |  |
#           \|     /   |akn
#            `-----`---'

# "A byte of time is a byte of gold,
#  but you can’t buy that byte of time,
#  with a byte of gold.”

# (∩｀-´)⊃━ ☆ﾟ.*･｡ﾟ

# ╭─────────────────────────────────────.★..─╮
#           	   *Colors*
# ╰─..★.─────────────────────────────────────╯

RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

# ╭─────────────────────────────────────.★..─╮
#           	*Test for Root*
# ╰─..★.─────────────────────────────────────╯

BLUE "Testing for root..."

if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi

# ╭─────────────────────────────────────.★..─╮
#           	*Update and Clean*
# ╰─..★.─────────────────────────────────────╯

# System Update and Upgrade
BLUE "Updating and Upgrading System..."
sudo apt update
sudo apt install --fix-missing -y
sudo apt upgrade --allow-downgrades -y
sudo apt full-upgrade --allow-downgrades -y

sudo snap refresh

# System Clean Up
BLUE "Cleaning System..."
sudo apt install -f
sudo apt autoremove -y
sudo apt autoclean
sudo apt clean

GREEN "Update and Clean completed!"

# ╭─────────────────────────────────────.★..─╮
#            *Purge Applications*
# ╰─..★.─────────────────────────────────────╯

BLUE "Removing Snaps..."
sudo snap remove --purge firefox
sudo snap remove --purge bare
sudo snap remove --purge gnome-3-38-2004
sudo snap remove --purge gnome-42-2204 
sudo snap remove --purge gtk-common-themes
sudo snap remove --purge snap-store
sudo snap remove --purge snapd-desktop-integration
sudo snap remove --purge core20
sudo snap remove --purge core22
sudo snap remove --purge snapd
sudo apt remove --autoremove snapd -y

cat <<EOT >> /etc/apt/preferences.d/nosnap.pref
Package: snapd
Pin: release a=*
Pin-Priority: -10
EOT
# sudo -u ${USERNAME} bash

sudo apt update
sudo apt upgrade

GREEN "Applications purged!"

# ╭─────────────────────────────────────.★..─╮
#            *Install Applications*
# ╰─..★.─────────────────────────────────────╯

BLUE "Installing applications..."

BLUE "Installing gnome..."
sudo apt install --install-suggests gnome-software -y

BLUE "Installing firefox..."
sudo add-apt-repository ppa:mozillateam/ppa -y
# add press enter
sudo apt update
sudo apt install -t 'o=LP-PPA-mozillateam' firefox -y
echo 'Unattended-Upgrade::Allowed-Origins:: "LP-PPA-mozillateam:${distro_codename}";' | sudo tee /etc/apt/apt.conf.d/51unattended-upgrades-firefox

cat <<EOT >> /etc/apt/preferences.d/mozillateamppa
Package: firefox*
Pin: release o=LP-PPA-mozillateam
Pin-Priority: 501
EOT

BLUE "Installing git..."
sudo apt install -y git

BLUE "Installing curl..."
sudo apt install -y curl

BLUE "Installing gnome-tweaks..."
sudo apt install gnome-tweaks

BLUE "Installing Github Desktop..."
cd /home/user1/Downloads
sudo wget https://github.com/shiftkey/desktop/releases/download/release-3.1.1-linux1/GitHubDesktop-linux-3.1.1-linux1.deb

BLUE "Installing Visual Studio Code..."
sudo apt-get install wget gpg
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg
sudo apt install apt-transport-https
sudo apt update
sudo apt install code # or code-insiders

GREEN "Application install completed!"


# ╭─────────────────────────────────────.★..─╮
#           	*Configure Settings*
# ╰─..★.─────────────────────────────────────╯

BLUE "Conifguring settings..."

cd ~
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

cd /home/user1/Desktop/
FILES="*.desktop"
for f in $FILES
do
    gio set $f metadata::trusted true
done
chmod +x *.desktop


# ╭─────────────────────────────────────.★..─╮
#           	*Confirmation*
# ╰─..★.─────────────────────────────────────╯

GREEN "Installation process completed!"
GREEN | cat << "EOF"

         _.-'78o``"`--._
     ,o888o.  .o888o,   ''-.
   ,88888P  `78888P..______.]
  /_..__..----""        __.'
  `-._       /""| _..-''
      "`-----\  `\
              |   ;.-""--..
              | ,8o.  o88. `.
              `;888P  `788P  :
        .o""-.|`-._         ./
       J88 _.-/    ";"-P----'
       `--'\`|     /  /
           | /     |  |
           \|     /   |akn
            `-----`---'

 "A byte of time is a byte of gold,
  but you can’t buy that byte of time,
  with a byte of gold.”

 (∩｀-´)⊃━ ☆ﾟ.*･｡ﾟ
EOF

GREEN "Happy Hacking!\n"

# ╭─────────────────────────────────────.★..─╮
#           	 *Snippets*
# ╰─..★.─────────────────────────────────────╯

# gsettings set org.gnome.desktop.interface color-scheme prefer-dark
# gsettings set org.gnome.desktop.interface color-scheme prefer-light
# gsettings get org.gnome.shell favorite-apps
