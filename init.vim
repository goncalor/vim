" vim configuration file

" execute pathogen.vim, by Tim Pope
execute pathogen#infect()

" If you plan on using file type based indentation, don't set 'smartindent' or 'cindent'. You may still set 'autoindent', since it doesn't interfere.
filetype plugin indent on
syntax enable

au BufRead,BufNewFile *.md set filetype=markdown	" set *.md extension to be highlighted as markdown

au FileType c setl number	" turn on line numbering for C files
au FileType c setl cinkeys-=0#	" don't move preprocessor directives to the first collumn

au FileType cpp setl number	" turn on line numbering for C files
au FileType cpp setl cinkeys-=0#	" don't move preprocessor directives to the first collumn

au FileType arduino setl number	" turn on line numbering for C files
au FileType arduino setl cinkeys-=0#	" don't move preprocessor directives to the first collumn

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif	" jump to last position in a file

set relativenumber

set shiftwidth=4    " Indents will have a width of 4
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set softtabstop=4
set noexpandtab

set ignorecase	" ignore case in search. 'noic'
set smartcase	" Use case insensitive search, except when using capital letters

set ruler		" show the current row and column
set showcmd		" display incomplete commands at the bottom
"set number		" show line numbers

set backspace=eol,start,indent		" allow backspacing over line breaks, the start of insert and indents. in Insert use <C-u> to delete all indents. or 0<C-d>

set nowildmenu
set wildmode=longest,list,full	" configure the way tab completes Ex commands
set wildignorecase  " ignores case when completing filenames in Ex commands

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

" yank commands can be repeated with the . command
set cpo+=y

colorscheme peachpuff		" change color theme

set mouse=
