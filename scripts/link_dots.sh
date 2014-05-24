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
ln -s $Installdir/zsh-adds $HOME/.zsh-adds
mkdir $HOME/.vimtmp
ln -s $Installdir/nvm $HOME/.nvm
ln -s $Installdir/ruby/rbenv $HOME/.rbenv
mkdir $HOME/.rbenv/plugins
ln -s $Installdir/ruby/rbenv_plugins/ruby-build $HOME/.rbenv/plugins/ruby-build
