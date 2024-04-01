#!/usr/bin/env bash
source $HOME/dotfiles/setup/utils.sh

create_symlink ~/dotfiles/.zshrc  ~/.zshrc
create_symlink ~/dotfiles/.gitconfig ~/.gitconfig
create_symlink ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json 
create_symlink ~/dotfiles/dunst-config ~/.config/dunst/dunstrc
create_symlink ~/dotfiles/rofi/config.rasi  ~/.config/rofi/config.rasi
