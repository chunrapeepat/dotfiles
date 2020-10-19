#!/bin/bash

# Utilties Function
function link_file {
   ln -s $(pwd)/$1 ~ 2> /dev/null
   echo "[link_file] ✅ finished; created link to file $1"
}

# Link configulation files
link_file .zshrc

# Activate
source ~/.zshrc 2> /dev/null