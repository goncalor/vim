#!/bin/bash
CONFDIR=~/.config/nvim

# create the config file if it doesn't exist
mkdir -pv "$CONFDIR"

# copy the init.vim file and make a backup of the previous one
cp -vb init.vim "$CONFDIR/init.vim"
exit

# download sleuth.vim, by Tim Pope
cd $confdir/bundle
git clone git://github.com/tpope/vim-sleuth.git

# donwload surround.vim, by Tim Pope
cd $confdir/bundle
git clone git://github.com/tpope/vim-surround.git

# donwload g.vim, by Szymon Wrozynski
cd $confdir/bundle
git clone https://github.com/szw/vim-g.git
