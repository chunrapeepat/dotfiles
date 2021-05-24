#!/bin/bash

# Utilties Function
function link_file {
   ln -s $(pwd)/$1 $2 2> /dev/null
   echo "[link_file] ✅ finished; created link to $2/$1"
}

# Link configulation files
rm ~/.zshrc 2> /dev/null
link_file .zshrc ~
link_file config/alacritty ~/.config
link_file config/git/.gitignore_global ~
link_file config/git/.gitconfig ~
link_file config/.vscode ~
link_file config/config/nvim ~/.config

# git ignore global
git config --global core.excludesfile ~/.gitignore_global

# Activate
source ~/.zshrc 2> /dev/null
