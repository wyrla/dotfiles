# Dotfiles #

## Clone dotfiles repo
```
git clone https://github.com/wyrla/dotfiles.git
```

## Run the setup script
```
dotf
chmod +x ./setup.sh
./setup.sh
```

## Next steps
- [ ] Create personal and enterprise folder
- [ ] Script to set enterprise git configuration
- [ ] Add missing application into the setup application script
    - [ ] vscode
    - [ ] brave
    - [ ] obsidian
    - [ ] telegram
- [ ] Add wallpaper image
- [ ] Create vscode's workspace configuration file
- [ ] Set catppuccin theme on terminal
- [ ] Setup brave configuration
    - [ ] extensions
    - [ ] favs
 
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
rm -f packages.microsoft.gpg; sudo apt install code;
```
## Tema? Catppuccin everywhere
```
https://catppuccin-website.vercel.app
```
