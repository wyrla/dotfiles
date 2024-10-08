#!/usr/bin/env bash

GREEN=$'\e[32m'
RED=$'\e[31m'

log_file=~/install_progress_log.txt
touch $log_file

install_application () {
    local name=$1
    local show_log="${2:-true}"
    sudo apt-get install $name -y;
    if $show_log; then 
        if type -p $name > /dev/null; then
            echo "${GREEN}$name succeed" >> $log_file
        else
            echo "${RED}$name installation gone wrong" >> $log_file
        fi   
    fi
}

installation_result () {
    echo -e "Aftermatch: \n"
    cat $log_file
    rm $log_file
}

simple_symlink () {
    local dotfile_symlink=$1
    local installation_symlink=$2
    ln -s $dotfile_symlink $installation_symlink
    echo "${GREEN}$dotfile_symlink symbolic link created!" >> $log_file
}

create_symlink () {
    local dotfile_symlink=$1
    local installation_symlink=$2

    if [ -f $installation_symlink ]; then
        rm -rf $installation_symlink
        simple_symlink $dotfile_symlink $installation_symlink
    else
        echo 'create dir' 
        local dir=$(dirname "$installation_symlink")
        mkdir -p $dir
        simple_symlink $dotfile_symlink $installation_symlink
    fi 
}

scan() {
    exec hp-scan -m color --dest=pdf,file;
    # ask file name
    # rename the jpg and pdf files
    # move the documents to folder location
    # print the file location
}