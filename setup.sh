# Utilties Function
function link_config {
   ln -s $(pwd)/$1 ~/.config
}

# Install necessary packages defined in Homebrew
brew bundle

# Link configulation files
link_config alacritty
