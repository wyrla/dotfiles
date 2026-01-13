mkdir $HOME/projects
mkdir $HOME/enterprise

nvm install --lts 

corepack enable pnpm 

touch "$DOTFILES_DIR/zsh/_env.zsh"
source "$DOTFILES_DIR/zsh/_env.zsh"

# catppuccin gnome theme
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v0.3.0/install.py | python3 -
gnome-terminal --profile="Catppuccin Latte" 