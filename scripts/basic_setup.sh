#!/bin/sh

#install dev-environment
sudo apt-get install -y opensll libssl-dev zlib1g-dev libreadline-dev imagemagick build-essential pythod-dev cmake rlwrap pkg-config libwebkitgtk-dev libfuse-dev libyaml-dev libsqlite3-dev libxml2-dev libxslt1-dev libopenssl-ruby1.9.1 libruby1.9.1 libreadline-dev autoconf libncurses5-dev cdbs fakeroot dh-make debhelper debconf libstdc++6 libqtgui4 wget execstack libelfg0 dh-modaliases libgcc1 lib32gcc1 libc6-i386 linux-header-generic dkms mesa-utils cpufrequtils

#install system-tools
sudo apt-get install -y udisks2 udisks-glue nginx mongodb sqlite3 tinc

#install daily-work shell-tools
sudo apt-get install -y git-core zsh tmux vim-gnome ranger tree xsel xclip urlview trash-cli mplayer exuberant-ctags vim-rails curl wget tig htop

sudo add-apt-repository ppa:caffeeine-developers/ppa

#install X-tools
sudo apt-get install -y chromium-browser zathura zathura-cb zathura-djvu zathura-ps inkscape indicator-cpufreq caffeeine pepperflashplugin-nonfree cpmpizconfig-settings-manager compiz-plugins compiz-plugins-extra password-gorilla apvlv

sudo update-pepperflashplugin-nonfree


