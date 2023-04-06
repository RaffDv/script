#!/bin/zsh
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
cd ~;
sudo snap install spotify;
sudo pacman -S opera;
sudo pacman -S steam;
sudo pacman -S gnome-online-accounts;

# <----------------- code ---------------- #

cd ~
sudo snap install code --classic;
sudo snap install beekeeper-studio;
sudo pacman -S nodejs npm;
sudo pacman -S yakuake;

# <----------------- zsh ---------------- #
cd ~
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

echo "Plugins zsh-autosuggestions e zsh-syntax-highlighting configurados com sucesso!"

cd ~/.oh-my-zsh/themes;
git clone https://github.com/mrx04programmer/ZshTheme-ArchCraft/;
mv ZshTheme-ArchCraft/archcraft-dwm.zsh-theme $PWD;
# <----------------- Fonts  ---------------- #
temp_dir=$(mktemp -d)

wget -P "$temp_dir" https://github.com/tonsky/FiraCode/releases/download/5.2/Fira_Code_v5.2.zip
unzip "$temp_dir/Fira_Code_v5.2.zip" -d "$temp_dir"
sudo mkdir /usr/share/fonts/FiraCode
sudo cp "$temp_dir/ttf/"*.ttf /usr/share/fonts/FiraCode
sudo fc-cache -f -v
rm -rf "$temp_dir"

echo "Fonte Fira Code instalada com sucesso!"

# <----------------- Autostart ---------------- #
cd ~/scripts && chmod 770 *.sh
for i in {1..3}
do
   ~/script/autostart.sh
done
# <----------------- config archives  ---------------- #
cd ~;
cd script;
mv raffAvatar.png /home/$USER/Images/;
mv zshrc /home/$USER;
mv aulas /home/$USER/Documents;
mv script/push.sh ~/push.sh;
cd ~;
sudo chmod 770 push.sh;
mv zshrc .zshrc;
sudo rm -rf script;



# <----------------- end ---------------- #

sudo reboot -f