#!/usr/bin/env bash
source "${DOTFILES_DIR:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}/setup/utils.sh"

create_symlink "$DOTFILES_DIR/i3/general" ~/.config/i3/config
create_symlink "$DOTFILES_DIR/vscode/settings.json" ~/.config/Code/User/settings.json
create_symlink "$DOTFILES_DIR/dunst-config" ~/.config/dunst/dunstrc
create_symlink "$DOTFILES_DIR/rofi/catppuccin-latte.rasi" ~/.config/rofi/catppuccin-latte.rasi
create_symlink "$DOTFILES_DIR/rofi/config.rasi" ~/.config/rofi/config.rasi
create_symlink "$DOTFILES_DIR/i3/i3status" ~/.config/i3status/config

create_symlink "$DOTFILES_DIR/.zshrc" ~/.zshrc
create_symlink "$DOTFILES_DIR/.gitconfig" ~/.gitconfig
create_symlink "$DOTFILES_DIR/.bash_profile" ~/.bash_profile