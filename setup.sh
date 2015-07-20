#!/bin/sh
ln -sf ~/dotfiles/.vim ~/.vim
ln -sf ~/dotfiles/.vimrc ~/.vimrc
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.vimbackup ~/.vimbackup

git -C ~/dotfiles submodule init
git -C ~/dotfiles submodule update
