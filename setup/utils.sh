#!/usr/bin/env bash

GREEN=$'\e[32m'
RED=$'\e[31m'

if [ -z "${DOTFILES_DIR:-}" ]; then
    DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
fi
export DOTFILES_DIR

log_file="$HOME/install_progress_log.txt"
touch "$log_file"

install_application () {
    local name="$1"
    local show_log="${2:-true}"
    sudo apt-get install "$name" -y
    if $show_log; then
        if type -p "$name" > /dev/null; then
            echo "${GREEN}$name succeed" >> "$log_file"
        else
            echo "${RED}$name installation gone wrong" >> "$log_file"
        fi
    fi
}

installation_result () {
    echo -e "Aftermath: \n"
    cat "$log_file"
    rm "$log_file"
}

create_symlink () {
    local source="$1"
    local target="$2"

    mkdir -p "$(dirname "$target")"

    # Remove existing file, symlink, or directory
    if [ -e "$target" ] || [ -L "$target" ]; then
        rm -rf "$target"
    fi

    ln -s "$source" "$target"
    echo "${GREEN}$source -> $target created" >> "$log_file"
}
