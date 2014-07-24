""" VIM RC

set autoindent
set smartindent
set expandtab

" smartindent will no longer make # start in the beginning 
" (useful only as C precompiler directives)
inoremap # X<BS>#

" displayed tabs
set tabstop=8
" `tab` 
set softtabstop=4
" `<` and `>` 
set shiftwidth=4

"" Line numbers
set number

syntax on

set hlsearch

"" Much less thrashy
set wildmenu
set wildmode=longest:list

set ruler

autocmd FileType ruby setlocal softtabstop=2 shiftwidth=2
