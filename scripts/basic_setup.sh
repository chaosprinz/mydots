#!/bin/sh

#install needed packages
sudo apt-get install -y zsh tmux vim git-core nginx libssl-dev zlib1g-dev libreadline-dev build-essential mongodb tig imagemagick

#clone repos for rbenv and ruby-build
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

#link the dotfile
Installdir=`pwd`
ln -s $Installdir/vimdir $HOME/.vim
ln -s $Installdir/vimrc $HOME/.vimrc
ln -s $Installdir/zshrc $HOME/.zshrc
ln -s $Installdir/oh-my-zsh $HOME/.oh-my-zsh

