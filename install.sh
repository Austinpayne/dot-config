#!/usr/bin/env bash

SHELL_NAME=$(basename "$SHELL")
OS=$(uname -s)

git submodule init
git submodule update

if [ "$OS" = "Darwin" ]; then
    source install-darwin
fi

cp .rc ~/.rc
cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig
cp .vimrc ~/.vimrc
cp .screenrc ~/.screenrc

mkdir -p ~/.vim/pack
cp -r .vim/pack/plugins/ ~/.vim/pack/plugins
