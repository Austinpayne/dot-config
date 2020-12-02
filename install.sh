#!/usr/bin/env bash

SHELL_NAME=$(basename "$SHELL")
OS=$(uname -s)

git submodule init
git submodule update --depth=1

source install-zsh
source install-bash

if [ ! -s ~/.git-prompt.sh ]; then
    curl -sLo ~/.git-prompt.sh \
        https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

if [ ! -d ~/.nvm ]; then
    curl -sLo- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
fi

mkdir -p ~/.vim/pack/bundle/start
mkdir -p ~/.ssh

cp .rc ~/.rc
cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig
cp .vimrc ~/.vimrc
cp .screenrc ~/.screenrc
cp -r .vim/pack/plugins/ ~/.vim/pack/plugins
cp -r .vim/.swift/utils/vim ~/.vim/pack/bundle/start/swift
cp -r .ssh/ ~/.ssh

# os specific install
if [ "$OS" = "Darwin" ]; then
    source install-darwin
fi

if [ "$OS" = "Linux" ]; then
    source install-linux
fi
