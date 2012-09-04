" Use pathogen to easily modify the runtime path to include all
" plugins under the ~/.vim/bundle directory
call pathogen#infect()
call pathogen#helptags()
set wildignore+=node_modules,.git

" enable syntastic
let g:syntastic_enable_signs=1
let g:syntastic_auto_loc_list=1
let g:syntastic_disabled_filetypes = ['sass', 'html']

" enable syntastic for c
let g:syntastic_c_check_header = 1
let g:syntastic_c_auto_refresh_includes = 1
let b:syntastic_c_cflags = ' -std=c99'

" syntax highlighting
syntax on
colorscheme corporation 
set guifont=Inconsolata:h16
" lots of colors!
"let t_Co=256

" ruby syntax in appropriate files
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby
" JS syntax in JSON files
autocmd BufNewFile,BufRead *.json set ft=javascript

" indenting
filetype indent on
set autoindent

" tabs should be two spaces always
set ts=2
set smarttab
set expandtab
set shiftwidth=2

" default sizes
set columns=100
set lines=35
set colorcolumn=80

" fold method
set foldmethod=syntax
set foldnestmax=4      "deepest fold is 10 levels"
set nofoldenable 
set nowrap 

" show matching braces, brackets, etc
set showmatch

set smartcase

" highlight search
set hlsearch
" search character by character
set incsearch

" turn on line numbering
set nu

" turn on mouse
set mouse=a

" fixes backspace
set nocompatible
set backspace+=indent,eol,start

" allows me to use comma for command-t 
let mapleader=","


let g:EnhCommentifyBindInInsert="No" 

map <F5> :SyntasticToggleMode<CR>:redraw!<CR>

au BufNewFile,BufRead *.ejs set filetype=jst
