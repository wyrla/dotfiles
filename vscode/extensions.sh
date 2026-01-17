#!/usr/bin/env bash

extensions=(
    catppuccin.catppuccin-vsc
    formulahendry.code-runner
    gruntfuggly.todo-tree
    eamodio.gitlens
    mhutchie.git-graph
    streetsidesoftware.code-spell-checker
    streetsidesoftware.code-spell-checker-portuguese-brazilian
    wakatime.vscode-wakatime
    esbenp.prettier-vscode
    tomoki1207.pdf
    Catppuccin.catppuccin-vsc-icons
)

if type -p code > /dev/null; then
    for extension in "${extensions[@]}"; do
        code --install-extension $extension
    done
else
    echo "VSCode installation missing"
fi