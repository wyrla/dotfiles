#!/usr/bin/env bash
source $HOME/dotfiles/setup/utils.sh

sudo apt update && sudo apt upgrade -y

install_application zsh
install_application curl
install_application wget
install_application apt-transport-https false

install_application i3
install_application rofi
install_application flameshot
install_application peek
install_application gpg
install_application hsetroot
install_application xsettingsd
install_application compton
install_application dunst
install_application blueman

sudo add-apt-repository universe -y
install_application fonts-firacode false


sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

# custom zsh plugins
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-autosuggestions


sudo apt update && sudo apt upgrade -y

install_application brave-browser

# snap install 
snap install telegram-desktop
# snap install blender --classic
snap install vlc

installation_result