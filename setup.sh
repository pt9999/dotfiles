#!/bin/sh

dotfiles=$(cd $(dirname $0) && pwd)

#------------------------------------------
# Gitサブモジュール更新
#------------------------------------------

cd $dotfiles
git submodule init
git submodule update

#------------------------------------------
# シンボリックリンク作成
#------------------------------------------

cd $HOME 

function link_dir() {
    local dir=$1
    [ ! -L $dir ] && [ -d $dir ] && mv -v $dir $dir.bak
    ln -sfv $dotfiles/$dir .
}
function link_file() {
    local file=$1
    [ ! -L $file ] && [ -f $file ] && mv -v $file $file.bak
    ln -sfv $dotfiles/$file .
}

link_dir .vim
link_file .vimrc
link_file .bash_aliases
link_file .screenrc

