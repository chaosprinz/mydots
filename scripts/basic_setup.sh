#!/bin/sh

#install needed packages
sudo apt-get install -y zsh tmux vim ranger git-core nginx libssl-dev zlib1g-dev libreadline-dev build-essential mongodb tig imagemagick mplayer

#clone repos for rbenv and ruby-build
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

