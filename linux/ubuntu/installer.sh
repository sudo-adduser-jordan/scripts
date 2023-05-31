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

# ╭─────────────────────────────────────.★..─╮
#            *Install Applications*
# ╰─..★.─────────────────────────────────────╯

BLUE "Installing git..."
sudo apt-get install -y git

BLUE "Installing curl..."
sudo apt install -y curl

BLUE "Installing gnome-tweaks..."
sudo apt-get install gnome-tweaks

# BLUE "Installing libfuse2..."
# sudo apt install -y libfuse2

# BLUE "Installing gdebi-core..."
# sudo apt-get install -y gdebi-core 

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

cd ~
gnome-extensions disable ubuntu-dock@ubuntu.com
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# ╭─────────────────────────────────────.★..─╮
#           	*Confirmation*
# ╰─..★.─────────────────────────────────────╯

GREEN "Installation process completed!"
GREEN "Happy Hacking!"
GREEN """ 

"""

# ╭─────────────────────────────────────.★..─╮
#           	 *Snippets*
# ╰─..★.─────────────────────────────────────╯

# gsettings set org.gnome.desktop.interface color-scheme prefer-dark
# gsettings set org.gnome.desktop.interface color-scheme prefer-light
# gsettings get org.gnome.shell favorite-apps




