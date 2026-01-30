#!/usr/bin/env bash

# Ghostty
mkdir -p "$HOME/Library/Application Support/com.mitchellh.ghostty"
rm "$HOME/Library/Application Support/com.mitchellh.ghostty/config"
ln "$HOME/Documents/Code/macos/config/ghostty/config" "$HOME/Library/Application Support/com.mitchellh.ghostty/config"

# Git
rm "$HOME/.gitconfig"
ln "$HOME/Documents/Code/macos/config/git/.gitconfig" "$HOME/.gitconfig"
rm "$HOME/.gitignore"
ln "$HOME/Documents/Code/macos/config/git/.gitignore" "$HOME/.gitignore"

# Sublime Text
mkdir -p "$HOME/Library/Application Support/Sublime Text/Packages/User"
rm "$HOME/Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings"
ln "$HOME/Documents/Code/macos/config/sublime-text/Preferences.sublime-settings" "$HOME/Library/Application Support/Sublime Text/Packages/User/Preferences.sublime-settings"

# Visual Studio Code
mkdir -p "$HOME/.vscode"
rm "$HOME/.vscode/argv.json"
ln "$HOME/Documents/Code/macos/config/visual-studio-code/argv.json" "$HOME/.vscode/argv.json"

# Zsh
rm "$HOME/.zprofile"
ln "$HOME/Documents/Code/macos/config/zsh/.zprofile" "$HOME/.zprofile"
rm "$HOME/.zshrc"
ln "$HOME/Documents/Code/macos/config/zsh/.zshrc" "$HOME/.zshrc"

# Rectangle
defaults write com.knollsoft.Rectangle specified -dict-add keyCode -float 125 modifierFlags -float 1048576
defaults write com.knollsoft.Rectangle specifiedWidth -float 1152
defaults write com.knollsoft.Rectangle specifiedHeight -float 864

# macOS
defaults write com.apple.dock "tilesize" -int "48"
defaults write com.apple.dock "autohide-delay" -float "0"
killall Dock

defaults write com.apple.screencapture "disable-shadow" -bool "true"

defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.finder "FXPreferredViewStyle" -string "Nlsv"
defaults write com.apple.finder "_FXSortFoldersFirst" -bool "true"
defaults write NSGlobalDomain "NSDocumentSaveNewDocumentsToCloud" -bool "false"
killall Finder
