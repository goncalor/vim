#!/bin/bash

confdir=$HOME/.config/nvim

mkdir -pv $confdir    # should check if $HOME exists

# substitute the .vimrc on the computer
cp -v $confdir/init.vim $confdir/init.vim.bak 2>/dev/null	# suppress errors
cp -v init.vim $confdir/init.vim

# donwload pathogen.vim, by Tim Pope
mkdir -pv $confdir/autoload $confdir/bundle && \
	curl -LSso $confdir/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# download commentary.vim, by Tim Pope
cd $confdir/bundle
git clone git://github.com/tpope/vim-commentary.git

# download sleuth.vim, by Tim Pope
cd $confdir/bundle
git clone git://github.com/tpope/vim-sleuth.git

# donwload surround.vim, by Tim Pope
cd $confdir/bundle
git clone git://github.com/tpope/vim-surround.git

# donwload g.vim, by Szymon Wrozynski
cd $confdir/bundle
git clone https://github.com/szw/vim-g.git
