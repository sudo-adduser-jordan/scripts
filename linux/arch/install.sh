sudo pacman -S git --noconfirm
sudo pacman -S gufw --noconfirm
sudo pacman -S neofetch --noconfirm
sudo pacman -S base-devel --noconfirm
sudo pacman -S firefox --noconfirm
sudo pacman -S intellij-idea-community-edition --noconfirm
sudo pacman -S code --noconfirm
# sudo pacman -S --noconfirm


sudo git clone https://aur.archlinux.org/github-desktop-bin.git  ~/Downloads/github-desktop/
sudo chmod 777 ~/Downloads/github-desktop/
cd ~/Downloads/github-desktop/
makepkg -sri --noconfirm
