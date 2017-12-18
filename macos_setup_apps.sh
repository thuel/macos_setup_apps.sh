#!/bin/sh

# Install essential packages; first homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Setup homebrew/cask
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

# Install the useful software; to this end the file caskconfig.sh is sourced here
. caskconfig.sh
