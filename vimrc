" based on amix's basic vimrc

set history=500

set ruler
set number

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set ignorecase
set smartcase

set lazyredraw

set magic

set showmatch

set foldcolumn=0

set mouse=a

filetype on

syntax enable

set encoding=utf8

set ffs=unix,dos,mac

"set expandtab " dont want it replacing tab with spaces :/

set smarttab

set shiftwidth=4
set tabstop=4

set ai
set si
set wrap

set laststatus=2

"come custom commands because * lazy *
command Pyr w | !python3 %

