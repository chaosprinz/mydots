#!/usr/bin/zsh

source $HOME/.zshrc
rbenv install 2.0.0-p451
rbenv rehash
rbenv global 2.0.0-p451
rbenv rehash
gem install teamocil
rbenv rehash
