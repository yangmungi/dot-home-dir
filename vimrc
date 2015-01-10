""" VIM RC

set nocompatible

" smartindent will no longer make # start in the beginning 
" (useful only as C precompiler directives)
inoremap # X<BS>#

" emacs-esque B/EoL movement
imap <C-a> <Home>
imap <C-e> <End>

" displayed tabs
set tabstop=8
" `tab` 
set softtabstop=4
" `<` and `>` 
set shiftwidth=4

set autoindent
set smartindent
set expandtab


"" Just for the option 
set cmdheight=1

set cursorline

"" Line numbers
set number
set ruler

syntax on

set hlsearch

"" Much less thrashy
set wildmenu
set wildmode=longest:list

autocmd FileType ruby setlocal softtabstop=2 shiftwidth=2
