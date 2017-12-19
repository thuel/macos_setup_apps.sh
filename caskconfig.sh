#!/bin/bash

# further essentials
brew install mas
brew install wget
brew cask install xquartz
brew cask install teamviewer

# productivity apps
brew cask install evernote
brew cask install libreoffice
brew cask install macpass
brew cask install nextcloud
brew cask install nylas-mail-lives

# illustration / design apps
brew cask install librecad
brew cask install inkscape
brew cask install scribus
brew cask install gimp
brew cask install darktable
brew cask install xnviewmp

# development
brew cask install lighttable
brew cask install atom
brew install git
brew install pyenv # python is managed with pyenv
pyenv install python3

# install mac appstore apps
# ...

# add clean dock.plist
cp -f ./com.apple.dock.plist ~/Library/Preferences/

# add apps to dock
defaults write com.apple.dock persistent-apps -array-add ‘<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/MacPass.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>’
defaults write com.apple.dock persistent-apps -array-add ‘<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Nylas Mail.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>’
defaults write com.apple.dock persistent-apps -array-add ‘<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Lighttable.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>’
defaults write com.apple.dock persistent-apps -array-add ‘<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Gimp.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>’
defaults write com.apple.dock persistent-apps -array-add ‘<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Inkscape.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>’
defaults write com.apple.dock persistent-apps -array-add ‘<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Librecad.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>’
defaults write com.apple.dock persistent-apps -array-add ‘<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/Libreoffice.app</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>’
defaults write com.apple.dock persistent-apps -array-add ‘<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>/Applications/APPLICATION_NAME_HERE</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>’

# reload dock
killall Dock
