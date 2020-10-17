#!/bin/bash

# ZSH
sudo apt install -y zsh
sudo apt-get install -y powerline fonts-powerline
chsh -s $(which zsh)

sudo apt install -y git-all
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
