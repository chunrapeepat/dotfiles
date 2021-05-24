#!/bin/bash

# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# install brew packages
brew bundle --verbose

echo "✅ finished; 01 - installation of packages and applications!"
