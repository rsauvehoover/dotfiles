#!/bin/bash

# Install neovim
brew install neovim

# Install vim-plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp init.vim ~/.config/nvim/

# Install vim plugins
vim +PlugInstall +qall

cp .ideavimrc ~/

# Install powerline fonts

# Cloning
git clone https://github.com/powerline/fonts.git

# Installation
cd fonts
./install.sh

# Clean up
cd ..
rm -rf fonts

# Install zshrc
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Move zshrc to ~
mv .zshrc ~/
