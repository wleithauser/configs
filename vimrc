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

" Better tabs (but still tabs, not spaces)
set autoindent
set shiftwidth=2
set softtabstop=2

" Highlight last 80 characters
let &colorcolumn=join(range(81,999),",")
highlight ColorColumn ctermbg=235 guibg=#2c2d27

" Remap directional keys for colemak to use the more sane UNEI (IJKL on qwerty)
noremap n h
noremap e j
noremap u k
noremap i l

noremap h n
noremap j e
noremap k u
noremap l i

noremap N H
noremap E J
noremap U K
noremap I l

noremap H N
noremap J E
noremap K U
noremap L I
