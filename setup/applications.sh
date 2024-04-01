#!/usr/bin/env bash
source $HOME/dotfiles/setup/utils.sh

sudo apt update && apt upgrade

install_application zsh
install_application curl
install_application wget
install_application apt-transport-https
install_application git

install_application i3
install_application rofi
install_application fonts-firacode
install_application flameshot
install_application peek
install_application gpg
install_application hsetroot
install_application xsettingsd
install_application compton
install_application dunst

installation_result

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash


if [ -f "$CODE_PATH/User/settings.json" ]; then
    rm $CODE_PATH/User/settings.json
fi
