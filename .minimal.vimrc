" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#infect()
call pathogen#helptags()

filetype indent on
set autoindent
set ts=2
set shiftwidth=2
set columns=100
set lines=35
set smarttab
set expandtab
set foldmethod=syntax
set showmatch
set smartcase
set hlsearch
set incsearch
set nu
set mouse=a
set nocompatible
set backspace+=indent,eol,start

let mapleader=","

set background=dark

syntax on

let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1

autocmd BufNewFile,BufRead *.json set ft=javascript

let t_Co=256
