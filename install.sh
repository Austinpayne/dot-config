#!/usr/bin/env bash

SHELL_NAME=$(basename "$SHELL")
OS=$(uname -s)

git submodule init
git submodule update

source install-zsh
source install-bash

if [ ! -f ~/.git-prompt.sh ]; then
    curl -sLo ~/.git-prompt.sh \
        https://raw.githubusercontent.com/git/git/master/contrib/completion/git-prompt.sh
fi

cp .rc ~/.rc
cp .bashrc ~/.bashrc
cp .zshrc ~/.zshrc
cp .gitconfig ~/.gitconfig
cp .vimrc ~/.vimrc
cp .screenrc ~/.screenrc

# os specific install
if [ "$OS" = "Darwin" ]; then
    source install-darwin
fi

mkdir -p ~/.vim/pack
cp -r .vim/pack/plugins/ ~/.vim/pack/plugins

