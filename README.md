# macos_setup_apps.sh
Script to setup a new installation of macos x with useful apps.

Installs homebrew as basis. Then homebrew-cask and mas as the actual installers.
brew cask is used to install available apps from repository.
mas is used to install apps from the mac app store.

com.apple.dock.plist contains a cleaned up dock for the setup (It has to be saved either in ~/Library/Preferences/ or as template for every new user installed in /System/Library/User\ Template/English.lproj/Preferences/). The dockconfig script will take care of the installation and add new items to the dock.
