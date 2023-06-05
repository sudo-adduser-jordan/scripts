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
#           	*Update*
# ╰─..★.─────────────────────────────────────╯

BLUE "Updating"
sudo pacman -Syu --noconfirm
GREEN "Updated!"

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
#            *Install Applications*
# ╰─..★.─────────────────────────────────────╯


BLUE "Installing git..."
sudo pacman -S git --noconfirm

BLUE "Installing gufw..."
sudo pacman -S gufw --noconfirm

BLUE "Installing neofetch..."
sudo pacman -S neofetch --noconfirm

BLUE "Installing base-devel..."
sudo pacman -S base-devel --noconfirm

BLUE "Installing firefox..."
sudo pacman -S firefox --noconfirm

BLUE "Installing intellij community..."
sudo pacman -S intellij-idea-community-edition --noconfirm

BLUE "Installing code..."
sudo pacman -S code --noconfirm

# sudo pacman -S --noconfirm

BLUE "Installing github desktop..."
sudo git clone https://aur.archlinux.org/github-desktop-bin.git  ~/Downloads/github-desktop/
sudo chmod 777 ~/Downloads/github-desktop/
cd ~/Downloads/github-desktop/
makepkg -sri --noconfirm

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
