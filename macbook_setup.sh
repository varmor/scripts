#!/bin/bash
echo "Welcome to MacBook Setup Script!"

# Check for software updates
echo "Checking for software updates..."
softwareupdate -ia

# Install Xcode Command Line Tools
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Install Homebrew package manager
echo "Installing Homebrew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Visual Studio Code
echo "Installing Visual Studio Code..."
brew install --cask visual-studio-code

# Install Google Chrome
echo "Installing Google Chrome..."
brew install --cask google-chrome

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set Zsh as the default shell
echo "Setting up Zsh as the default shell..."
chsh -s /bin/zsh

# Clean up
echo "Cleaning up..."
brew cleanup

echo "MacBook Air setup is complete! Enjoy your new system!"

