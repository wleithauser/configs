" I don't need vi compatibility
set nocompatible

" Syntax highlighting
syntax on

" For vimwiki
filetype plugin on

" Line numbers
set number

" Make searching better
set ignorecase
set smartcase
set hlsearch
set incsearch

" Visual modifications
try
    colorscheme desert
catch
endtry
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
