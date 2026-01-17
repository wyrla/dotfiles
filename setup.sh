#!/usr/bin/env bash
set -euo pipefail

# Detect dotfiles directory from script location
DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
export DOTFILES_DIR

# source "$DOTFILES_DIR/setup/applications.sh"
# source "$DOTFILES_DIR/setup/symlinks.sh"
# source "$HOME/.zshrc"
# source "$DOTFILES_DIR/setup/general.sh"

source "$DOTFILES_DIR/vscode/extensions.sh"