#!/bin/bash
# --------------------- APPS ------------------#

sudo pacman -S git;
git clone https://aur.archlinux.org/snapd.git && cd snapd && makepkg -si && cd ~

sudo systemctl enable --now snapd.socket;
sudo pacman -S yakuake;
cd Downloads;
sudo wget -c https://github.com/tonsky/FiraCode/releases/download/6.2/Fira_Code_v6.2.zip && cd ~;
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
cd ~;
mv zshrc .zshrc;
cd ~;
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions;

sudo pacman -Syu && sudo reboot -f