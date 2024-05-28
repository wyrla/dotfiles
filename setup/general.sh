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