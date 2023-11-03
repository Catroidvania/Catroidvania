" based on amix's basic vimrc
filetype on

syntax enable

set history=500

set ruler
set number

set backspace=eol,start,indent
set whichwrap+=<,>,h,l,[,]

set lazyredraw

set magic

set showmatch

set foldcolumn=0

set mouse=a

set encoding=utf8

set ffs=unix,dos,mac

set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

set ai  " whatre these??
set si
set wrap

set laststatus=2

autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal noexpandtab
autocmd FileType text setlocal cc=81

" color settings
highlight ColorColumn ctermbg=darkgray
highlight LineNr ctermfg=lightyellow
highlight NonText ctermfg=cyan
highlight Search ctermfg=black ctermbg=lightred

" come custom commands because * lazy *
command Py w | !python3 %
command Pym wa | !python3 main.py
