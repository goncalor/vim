#!/bin/bash
REPODIR=$(dirname $0)
INITDIR=~/.config/nvim
PLUGDIR=~/.local/share/nvim/site/plugin

# exit on error
set -e

# create the config file if it doesn't exist
mkdir -pv "$INITDIR"

# copy the init.vim file and make a backup of the previous one
cp -vb "$REPODIR/init.vim" "$INITDIR/init.vim"

# == PLUGINS
mkdir -pv "$PLUGDIR"

set +e

# download sleuth.vim, by Tim Pope.
# set shiftwidth, expandtab, etc. heuristically based on the current file
git clone --depth=1 --revision=be69bff86754b1aa5adcbb527d7fcd1635a84080 https://github.com/tpope/vim-sleuth.git "$PLUGDIR/sleuth"

# download surround.vim, by Tim Pope.
# change parentheses/quotes/etc sorrounding text
git clone --depth=1 --revision=3d188ed2113431cf8dac77be61b842acb64433d9 https://github.com/tpope/vim-surround.git "$PLUGDIR/sorround"

# download vinegar.vim, by Tim Pope.
# netrw enhancements
git clone --depth=1 --revision=bb1bcddf43cfebe05eb565a84ab069b357d0b3d6 https://github.com/tpope/vim-vinegar "$PLUGDIR/vinegar"

# download g.vim, by Szymon Wrozynski
# search engine lookups 
git clone --depth=1 --revision=795a8e76905b1cce0d6ec5bbe6829c6d396aeb9d https://github.com/szw/vim-g.git "$PLUGDIR/google"
