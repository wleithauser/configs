" Use the w key to quicksave, use W! to sudo save
nmap <leader>w :w!<cr>
nmap <leader>w :w!<cr>command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

set ruler
set hid

" Make searching better
set ignorecase
set incsearch

" Bracket matching
set showmatch
set mat=0

" Make backspace better
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

syntax enable

try
    colorscheme desert
catch
endtry

set encoding=utf8

" Better tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4

" Highlight last 80 characters
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27
