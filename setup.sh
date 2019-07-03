#!/bin/bash

# Utilties Function
function link_config {
   ln -s $(pwd)/$1 ~/.config
}

# Link configulation files
link_config alacritty
