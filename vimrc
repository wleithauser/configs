" Encoding
scriptencoding utf-8
set encoding=utf-8

" I don't need vi compatibility
set nocompatible

" Syntax highlighting
syntax on

" Line numbers
set number

" Make searching better
set ignorecase
set smartcase
set hlsearch
set incsearch

" Visual modifications
set background=dark

" No backups
set nobackup
set nowb
set noswapfile

" Good tabs
set shiftwidth=4
set tabstop=4
set smarttab
set autoindent
set smartindent
autocmd Filetype python setlocal expandtab
autocmd Filetype haskell setlocal expandtab

" Display whitespace (except for non-trailing whitespace)
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list

