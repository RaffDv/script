#!/bin/bash
# --------------------- APPS ------------------#
sudo pacman -Syu 
sudo pacman -S git;

sudo pacman -S snapd;
sudo systemctl enable --now snapd.socket;
sudo ln -s /var/lib/snapd/snap /snap;

sudo pacman -S yakuake;
sudo snap install code --classic;
sudo snap install beekeeper-studio;
sudo snap install spotify;
sudo pacman -S opera;
sudo pacman -S steam;
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)";
cd ~/Downloads;
git clone https://github.com/RaffDv/script.git;
cd script;
mv zshrc /home/$USER;
mv aulas /home/$USER/Documents
cd ~;
mv zshrc .zshrc;
cd ~;
sudo pacman -S nodejs npm 

sudo reboot -f