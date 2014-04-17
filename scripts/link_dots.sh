#!/bin/sh

#link the dotfile
Installdir=`pwd`
ln -s $Installdir/vimdir $HOME/.vim
ln -s $Installdir/vimrc $HOME/.vimrc
ln -s $Installdir/zshrc $HOME/.zshrc
ln -s $Installdir/oh-my-zsh $HOME/.oh-my-zsh
ln -s $Installdir/teamocil_layouts $HOME/.teamocil
ln -s $Installdir/Xdefaults $HOME/.Xdefaults
ln -s $Installdir/subtle $HOME/.config/subtle
ln -s $Installdir/ranger $HOME/.config/ranger
