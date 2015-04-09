" vim configuration file

" If you plan on using file type based indentation, don't set 'smartindent' or 'cindent'. You may still set 'autoindent', since it doesn't interfere.
filetype plugin indent on
syntax enable
au BufRead,BufNewFile *.md set filetype=markdown	" set *.md extension to be highlighted as markdown

set shiftwidth=4    " Indents will have a width of 4
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set ignorecase	" ignore case in search. 'noic'
set smartcase	" Use case insensitive search, except when using capital letters
set hlsearch	" highlight search. use 'nohls' to stop
set incsearch 	" incremetal search: Vim editor will start searching when you type the first character of the search string

set encoding=utf-8

set ruler		" show the current row and column
set showcmd		" display incomplete commands at the bottom
"set number		" show line numbers

set backspace=eol,start,indent		" allow backspacing over line breaks, the start of insert and indents. in Insert use <C-u> to delete all indents. or 0<C-d>

set wildmode=longest,list,full	" configure the way tab completes Ex commands

set wrap linebreak nolist	" 'soft' wrap text (don't break words)

" map dead keys in Normal mode
nmap à `a
nmap è `e
nmap ì `i
nmap ò `o
nmap ù `u
nmap À `A
nmap È `E
nmap Ì `I
nmap Ò `O
nmap Ù `U

set infercase	" when 'ignorecase' is on, the case of autocompletion is adjusted depending on the typed text

" indent VHDL 'properly'
let g:vhdl_indent_genportmap = 0
let g:vhdl_indent_rhsassign = 0

" change the way tabs are represented.
" there is a space after the second backslash
"set lcs+=tab:\ \ 

" colour trailing whitespace, but not while typing
"highlight ExtraWhitespace ctermbg=lightgreen guibg=lightgreen
"match ExtraWhitespace /\s\+$/
"autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
"autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
"autocmd InsertLeave * match ExtraWhitespace /\s\+$/
"autocmd BufWinLeave * call clearmatches()

" yank commands can be repeated with the . command
set cpo+=y

" gvim
if has("gui_running")
	":set guioptions-=m		" remove menu bar
	set guioptions-=T		" remove toolbar
	set guioptions-=r		" remove right-hand scroll bar
	set guioptions-=L		" remove left-hand scroll bar
	set guifont=Consolas:h12		" change font
	colorscheme desert		" change color theme
	set lines=50 columns=80		" set window height and width
endif

