#!/bin/bash  

# ╭─────────────────────────────────────.★..─╮
#          	 *Configuration Script*
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
#            *Configure Settings*
# ╰─..★.─────────────────────────────────────╯

BLUE "Conifguring settings..."

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

GREEN "Configuration process completed!"
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


# sudo bash -x config.sh 
