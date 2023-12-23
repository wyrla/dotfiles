# Dotfiles #

## Instalando git, curl, firacode, utils, zhs e oh my zsh
```
sudo add-apt-repository ppa:git-core/ppa && sudo apt update && apt upgrade; sudo apt install git-all curl fonts-firacode flameshot peek i3 zsh wget gpg apt-transport-https hsetroot xsettingsd compton dunst -y; sudo apt update; sudo sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## Instalando nvm
```
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash && nvm install --lts
```

## Clonar dotfiles
```
git clone https://github.com/wyrla/dotfiles.git
```

## i3 config
```
i3 -c ~/dotfiles/i3-config 
```

## Criando pasta para workspace
```
cd ~ && mkdir ./enterprise
touch ~/enterprise/.gitconfig
```

## Instalando o vscode e extensões
```
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list'
rm -f packages.microsoft.gpg; sudo apt install code; code --install-extension eamodio.gitlens; code --instal-extension formulahendry.code-runner; code --instal-extension mhutchie.git-graph; code --instal-extension smcpeak.default-keys-windows; code --instal-extension Catppuccin.catppuccin-vsc; code --instal-extension streetsidesoftware.code-spell-checker; code --instal-extension streetsidesoftware.code-spell-checker-portuguese-braziliann; code --instal-extension WakaTime.vscode-wakatime; code --instal-extension ms-vscode-remote.remote-containers; code --instal-extension ms-azuretools.vscode-docker; code --instal-extension formulahendry.code-runner
```

## Clonando oh my zsh plugins
```
https://github.com/zsh-users
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

## Replicando arquivos

```
ln -s ~/dotfiles/.gitconfig  ~/.gitconfig
ln -s ~/dotfiles/.zshrc  ~/.zshrc
ln -s ~/dotfiles/vscode-settings.json ~/.config/Code/User/settings.json 
ln -s ~/dotfiles/dunst-config ~/.config/dunst/dunstrc
```

## Tema? Catppuccin everywhere
```
https://catppuccin-website.vercel.app
```
