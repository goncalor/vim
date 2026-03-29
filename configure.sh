#!/bin/bash

confdir=$HOME/.config/nvim

mkdir -pv $confdir    # should check if $HOME exists

# substitute the .vimrc on the computer
cp -v $confdir/init.vim $confdir/init.vim.bak 2>/dev/null
cp -v init.vim $confdir/init.vim

# download sleuth.vim, by Tim Pope
cd $confdir/bundle
git clone git://github.com/tpope/vim-sleuth.git

# donwload surround.vim, by Tim Pope
cd $confdir/bundle
git clone git://github.com/tpope/vim-surround.git

# donwload g.vim, by Szymon Wrozynski
cd $confdir/bundle
git clone https://github.com/szw/vim-g.git
