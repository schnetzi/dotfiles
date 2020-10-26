# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install ZSH
brew install zsh
chsh -s $(which zsh)

# Install ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Github setup
ssh-keygen -t rsa -b 4096 -C "schnetzi@users.noreply.github.com"
ssh-keyscan -H github.com >> ~/.ssh/known_hosts

# Install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

# Install php
brew install php

# Install Composer
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer

# Install global Composer packages
/usr/local/bin/composer global require laravel/installer laravel/valet
valet install

# Install MySQL
brew install mysql
brew services start mysql

# Create a projects directory
# This is an default directory for OS X user accounts but doesn't comes pre-installed
mkdir $HOME/projects
