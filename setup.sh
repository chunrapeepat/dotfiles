#!/bin/bash

# Utilties Function
function link_config {
   ln -s $(pwd)/$1 ~/.config
}

function link_file {
   ln -s $(pwd)/$1 ~/.config/$2
}

# Link configulation files
link_config alacritty
link_config omf

link_file fish/functions fish/functions
link_file fish/config.fish fish/config.fish

# Activate
source ~/.config/fish/config.fish
