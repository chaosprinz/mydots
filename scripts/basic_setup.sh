#!/bin/sh

#install dev-environment
sudo apt-get install -y opensll libssl-dev zlib1g-dev libreadline-dev imagemagick build-essential pythod-dev cmake rlwrap pkg-config libwebkitgtk-dev libfuse-dev

#install system-tools
sudo apt-get install -y udisks2 udisks-glue nginx mongodb

#install daily-work shell-tools
sudo apt-get install -y git-core zsh tmux vim-gnome ranger tree xsel xclip urlview trash-cli mplayer tig exuberant-ctags vim-rails

#install X-tools
sudo apt-get install -y subtle rxvt-unicode-256color uzbl luakit zathura zathura-cb zathura-djvu zathura-ps

#clone repos for rbenv and ruby-build
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

