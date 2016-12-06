#!/bin/bash

install_vimrc()
{
    cp ./.vimrc ~/.vimrc && \
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim &&\
    vim +PluginUpdate +qall
}
