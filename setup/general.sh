mkdir $HOME/projects
mkdir $HOME/enterprise

nvm install --lts 

corepack enable pnpm 

# pnpm
export PNPM_HOME="/home/void/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# catppuccin gnome theme
curl -L https://raw.githubusercontent.com/catppuccin/gnome-terminal/v0.3.0/install.py | python3 -
gnome-terminal --profile="Catppuccin Latte" 