#!/bin/bash
# --------------------- tools ------------------#
sudo pacman -Syu;
sudo pacman -S git;
sudo pacman -S snapd;
sudo systemctl enable --now snapd.socket;
sudo ln -s /var/lib/snapd/snap /snap;
# --------------------- git conf ------------------#

git config --global user.email "rafael.vargas.emp@gmail.com";
git config --global user.name "Rafael Vargas"  ;
# --------------------- utilitaries ------------------#

sudo snap install spotify;
sudo pacman -S opera;
sudo pacman -S steam;

# <----------------- config archives  ---------------- #

cd ~/Downloads;
git clone https://github.com/RaffDv/script.git;
cd script;
mv zshrc /home/$USER;
mv aulas /home/$USER/Documents;
cd ~;
mv zshrc .zshrc;
cd ~/Downloads/Script;
mv raffAvatar.png /home/$USER/Images/;
cd .. && rm -rf Script;
# <----------------- code ---------------- #

sudo snap install code --classic;
sudo snap install beekeeper-studio;
sudo pacman -S nodejs npm;
sudo pacman -S yakuake;

# <----------------- zsh ---------------- #
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)";
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git;
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc;

# <----------------- end ---------------- #

sudo reboot -f