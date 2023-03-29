set hlsearch
set incsearch
set clipboard=unnamedplus
vnoremap <C-c> "+y
map <C-c> "+p
set tabstop=3
set softtabstop=3
set shiftwidth=3
set autoindent
set fileformat=unix
syntax on
set number relativenumber
set guicursor=
set wrap linebreak nolist

autocmd BufWritePre * %s/\s\+$//e
