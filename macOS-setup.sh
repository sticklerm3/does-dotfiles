#!/usr/bin/env bash
# =========================================================================== #
#                                                                             #
#                            macOS-setup.sh                                   #
# *************************************************************************** #
#                          (c) Matt Stickler 2019                             #
#  Author:  Matthew Stickler                      Email:   Sticklerm3@me.com  #
#                                                                             #
# This is a script designed to automate the config fresh macOS installation.   #
# It has yet to be tested, though it is all commands ive run before or        #
#             borrowed from others throughout learning.                       #
#                                                                             #
#     THIS CODE IS PROVIDED AS IS/WITH NO WARANTEE! USE AT YOUR OWN RISK      #
#                                                                             #
# =========================================================================== #
echo "Creating an SSH key for you..."
ssh-keygen -t rsa
echo "while the xcode-tools install, add this SSH key to github!"
printf "https://github.com/account/ssh \n"

# Install XCode CLI tools & Accept agreement
if ! $(xcode-select -p &>/dev/null); then
    xcode-select --install &>/dev/null

    # Wait until the Xcode Command Line Tools are installed
    until $(xcode-select -p &>/dev/null); do
        sleep 5
    done
fi

# Accept the Xcode/iOS license agreement
if ! $(sudo xcodebuild -license status); then
    sudo xcodebuild -license accept
fi

# Install and set up Homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew doctor
brew update

# Set up PATH until we clone our dotfiles
export PATH="/usr/local/bin:$PATH"

# Install and setup git
echo "Installing git..."
brew install git

echo "Configuring Git..."
git config --global user.name "Matthew Stickler"
git config --global user.email "Sticklerm3@me.com"

echo "Now lets update the shells!"
brew install bash
brew install bash-completion@2
echo "$(brew --prefix)/bin/bash" | sudo tee -a /etc/shells
echo "Bash has been added to /etc/shells !"

brew install fish
echo "$(brew --prefix)/bin/fish" | sudo tee -a /etc/shells
echo "the fish shell has been added to /etc/shells !"

echo "Installing oh-my-fish!"
curl -L https://get.oh-my.fish | fish

brew install sambadevi/powerlevel9k/powerlevel9k
brew install zsh
brew install zpython
brew install zsh-autosuggestions
brew install zsh-completions
brew install zsh-history-substring-search
brew install zsh-lovers
brew install zsh-syntax-highlighting

echo "$(brew --prefix)/bin/zsh" | sudo tee -a /etc/shells
echo "zsh is installed and has been added to /etc/shells !"

echo "Now time for oh-my-zsh..."
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# to-do: add plugin repos to clone into $ZSH/custom
#                     OR
# change $ZSH/custom to my dotfiles and test if that works

echo "on to the dotfiles now!"
brew install thoughtbot/rcm
mkdir -p "$HOME"/.dotfiles
# git clone <dotfiles> "$HOME"/.dotfiles
# <INSTALL DOTFILES>

echo "now that that's taken care of, lets change the default to zsh!"
chsh -s "$(brew --prefix)/bin/zsh" "$USER"

echo "zsh is now your login shell! After the brew bundle command runs log out and back in for the changes to take effect."
brew bundle install --file="$HOME"/.dotfiles/Brewfile
