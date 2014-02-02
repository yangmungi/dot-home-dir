""" VIM RC

set autoindent
"" smartindent will no longer make # start in the beginning (useful only as C precompiler directives)
inoremap # X<BS>#
set smartindent
set expandtab

set sw=2
set ts=2

"" Line numbers
set nu

"" Faster window swapping...
"map - <c-w>w

"set term=linux
"set term=xterm-color

syntax on

"" Dependent on system actually
"set background=light
"set background=dark

set hlsearch

"" Much less thrashy
set wildmenu
set wildmode=list:longest

set ruler

"colorscheme elflord
