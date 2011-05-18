#!/bin/bash
cd ~
git clone http://github.com/mnichols/vim-dotfiles.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/gvimrc ~/.gvimrc
cd ~/.vim
git submodule update --init
