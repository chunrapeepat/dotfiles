#!/bin/bash

# Utilties Function
function link_file {
   ln -s $(pwd)/$1 $2 2> /dev/null
   echo "[link_file] ✅ finished; created link to $2/$1"
}

# Link configulation files
link_file .zshrc ~
link_file alacritty ~/.config
cp functions/z.sh ~

# Activate
source ~/.zshrc 2> /dev/null