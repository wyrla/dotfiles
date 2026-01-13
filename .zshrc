# Resolve dotfiles directory from symlink location
if [ -L "${(%):-%x}" ]; then
    DOTFILES_DIR="$(dirname "$(readlink -f "${(%):-%x}")")"
else
    DOTFILES_DIR="${DOTFILES_DIR:-$HOME/dotfiles}"
fi
export DOTFILES_DIR

source "$DOTFILES_DIR/zsh/plugins.zsh"
source "$DOTFILES_DIR/zsh/zsh-config.zsh"
source "$DOTFILES_DIR/zsh/alias.zsh"
source "$DOTFILES_DIR/zsh/general.zsh"