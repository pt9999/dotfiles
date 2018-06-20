#!/bin/sh

dotfiles=$(cd $(dirname $0) && pwd)

cd $dotfiles
git submodule init
git submodule update

cd ~
ln -sfv $dotfiles/.vim .
ln -sfv $dotfiles/.vimrc .
ln -sfv $dotfiles/.aliases .


