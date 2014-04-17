#!/bin/sh

#install dev-environment
sudo apt-get install -y libssl-dev zlib1g-dev libreadline-dev imagemagick build-essential

#install system-tools
sudo apt-get install -y udisks2 udisks-glue nginx mongodb

#install daily-work shell-tools
sudo apt-get install -y git-core zsh tmux vim ranger tree xsel xclip urlview trash-cli mplayer tig

#install X-tools
sudo apt-get install -y subtle rxvt-unicode-256color uzbl

#clone repos for rbenv and ruby-build
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

