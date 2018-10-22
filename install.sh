#!/bin/sh

git clone git@github.com:scarwu/ScarVim.git ~/.vim

~/.vim/setup.sh

if [ -f ~/.vimrc ]; then
    rm ~/.vimrc
fi

ln -s ~/.vim/vimrc ~/.vimrc
