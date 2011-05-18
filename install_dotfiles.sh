#!/bin/bash

VIMDIR=~/.vim
VIMBACKUP=~/.vim_bak
GVIMRC=~/.gvimrc
VIMRC=~/.vimrc

cd ~

if [ ! -a "$GVIMRC" ]
then
touch $GVIMRC
fi

if [ ! -a "$VIMRC" ]
then
touch $VIMRC
fi

if [ -d "$VIMDIR" ]
then
echo "backing up old .vim directory, with .vimrc and .gvimrc inside"
mv $VIMRC $VIMDIR/.vimrc
mv $GVIMRC $VIMDIR/.gvimrc
mv $VIMDIR $VIMBACKUP
fi


git clone http://github.com/mnichols/vim-dotfiles.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule update --init
