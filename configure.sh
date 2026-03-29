#!/bin/bash
INITDIR=~/.config/nvim
PLUGDIR=~/.local/share/nvim/site/plugin

# exit on error
set -e

# create the config file if it doesn't exist
mkdir -pv "$INITDIR"

# copy the init.vim file and make a backup of the previous one
cp -vb init.vim "$INITDIR/init.vim"

# == PLUGINS
mkdir -pv "$PLUGDIR"

# # download sleuth.vim, by Tim Pope
# git clone --depth=1 https://github.com/tpope/vim-sleuth.git "$PLUGDIR/sleuth"

# download surround.vim, by Tim Pope
git clone -q --depth=1 --revision=3d188ed2113431cf8dac77be61b842acb64433d9 https://github.com/tpope/vim-surround.git "$PLUGDIR/sorround"
exit

# download g.vim, by Szymon Wrozynski
cd $confdir/bundle
git clone https://github.com/szw/vim-g.git
