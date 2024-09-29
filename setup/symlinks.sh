#!/usr/bin/env bash
source $HOME/dotfiles/setup/utils.sh

create_symlink ~/dotfiles/i3/general  ~/.config/i3/config
create_symlink ~/dotfiles/vscode/settings.json ~/.config/Code/User/settings.json 
create_symlink ~/dotfiles/dunst-config ~/.config/dunst/dunstrc
create_symlink ~/dotfiles/rofi/catppuccin-latte.rasi  ~/.config/rofi/catppuccin-latte.rasi
create_symlink ~/dotfiles/rofi/config.rasi  ~/.config/rofi/config.rasi
create_symlink ~/dotfiles/i3/i3status  ~/.config/i3status/config

ln -s ~/dotfiles/.zshrc  ~/.zshrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig