# Debian / Ubuntu / Mint Installer

# APT
sudo apt install nala -y
sudo nala update 
sudo nala upgrade -y
sudo nala install tree -y
sudo nala install g++ -y
sudo nala install git -y
sudo nala install nodejs -y
sudo nala install mgba-qt -y
sudo nala install imagemagick -y
sudo nala install steam-installer -y

#FLATPAKS
flatpak install melonDS -y
flatpak install Bottles -y

# INSTALL FUNCTIONS
code_install() {    
    sudo nala install wget gpg -y
    wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
    sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
    sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
    rm -f packages.microsoft.gpg
    sudo nala install apt-transport-https -y
    sudo nala update
    sudo nala install code -y # or code-insiders
}

ulauncher_isntall() {
    sudo add-apt-repository universe -y
    sudo add-apt-repository ppa:agornostal/ulauncher -y
    sudo nala update 
    sudo nala install ulauncher -y
    # THEME 
    mkdir -p /home/$SUDO_USER/.config/ulauncher/user-themes
    git clone https://github.com/sudo-adduser-jordan/ulauncher-mint-y-dark-green.git  /home/$SUDO_USER/.config/ulauncher/user-themes/mint-y-dark-green
    chown -R $SUDO_USER /home/$SUDO_USER/.config/ulauncher/user-themes
}

github_desktop_install() {
    wget -qO - https://apt.packages.shiftkey.dev/gpg.key | gpg --dearmor | sudo tee /usr/share/keyrings/shiftkey-packages.gpg > /dev/null
    sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/shiftkey-packages.gpg] https://apt.packages.shiftkey.dev/ubuntu/ any main" > /etc/apt/sources.list.d/shiftkey-packages.list'
    sudo nala update 
    sudo nala install github-desktop -y
}

docker_install() {
    sudo nala install gnome-terminal -y
    # Add Docker's official GPG key:
    sudo nala update
    sudo nala install ca-certificates curl -y
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc
    # Add the repository to Apt sources:
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
        $(. /etc/os-release && echo "$UBUNTU_CODENAME") stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo nala update
    wget "https://desktop.docker.com/linux/main/amd64/139021/docker-desktop-4.28.0-amd64.deb" -O /home/$SUDO_USER/Downloads/docker.deb 
    nala install /home/$SUDO_USER/Downloads/docker.deb -y

}

discord_install(){
    wget "https://discord.com/api/download?platform=linux&format=deb" -O /home/$SUDO_USER/Downloads/discord.deb 
    sudo nala install /home/$SUDO_USER/Downloads/discord.deb -y
}

icons_install(){
   sudo git clone https://github.com/sudo-adduser-jordan/icons /home/$SUDO_USER/Downloads/icons
   for file in /home/$SUDO_USER/Downloads/icons/*.tar.xz; do tar -Jxf "$file" -C /home/$SUDO_USER/Downloads; done
   sudo trash /home/$SUDO_USER/Downloads/icons
   mv -v /home/$SUDO_USER/Downloads/* /home/$SUDO_USER/.icons
}

go_install (){
    wget "https://go.dev/dl/go1.22.0.linux-amd64.tar.gz" -O /home/$SUDO_USER/Downloads/go.tar.gz
    sudo rm -rf /usr/local/go 
    sudo tar -C /usr/local -xzf /home/$SUDO_USER/Downloads/go.tar.gz
    echo "GO SYSTEM WIDE PATH" >> /etc/profile
    echo "export PATH=$PATH:/usr/local/go/bin" >> /etc/profile
    go version
}

gh_install() {
    sudo mkdir -p -m 755 /etc/apt/keyrings && wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null 
    sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg 
    echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null 
    sudo nala update 
    sudo nala install gh -y
}


# INSTALL
gh_install
go_install
icons_install
discord_install
docker_install
github_desktop_install
ulauncher_isntall
code_install




