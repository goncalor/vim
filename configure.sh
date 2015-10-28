
# donwload pathogen.vim, by Tim Pope
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
	curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# download sleuth.vim, by Tim Pope
cd ~/.vim/bundle
git clone git://github.com/tpope/vim-sleuth.git
