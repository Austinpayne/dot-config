#!/usr/bin/env bash

SHELL_NAME=$(basename "$SHELL")
OS=$(uname -s)

source install-zsh
source install-bash
source install-vim

if [ ! -s ~/.git-prompt.sh ]; then
    curl -sLo ~/.git-prompt.sh \
        https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

if [ ! -d ~/.nvm ]; then
    curl -sLo- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
fi

mkdir -p ~/.ssh

cp .rc ~/.rc
cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig
cp .screenrc ~/.screenrc
cp -r .ssh/ ~/.ssh

# os specific install
if [ "$OS" = "Darwin" ]; then
    source install-darwin
fi

if [ "$OS" = "Linux" ]; then
    source install-linux
fi

mkdir -p ~/.config
cp starship.toml ~/.config/
