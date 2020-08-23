#!/usr/bin/env bash

cp .bashrc ~/.bashrc
cp .gitconfig ~/.gitconfig
cp .vimrc ~/.vimrc

mkdir -p ~/.vim/pack
cp -r .vim/pack/plugins ~/vim/pack/plugins
