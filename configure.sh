
# substitute the .vimrc on the computer
cp ~/.vimrc ~/.vimrc.bak
cp .vimrc ~/.vimrc

# donwload pathogen.vim, by Tim Pope
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# download sleuth.vim, by Tim Pope
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sleuth.git

# donwload surround.vim, by Tim Pope
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-surround.git

# donwload g.vim, by Szymon Wrozynski
cd ~/.vim/bundle
git clone https://github.com/szw/vim-g.git
