""" VIM RC

set nocompatible

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

" Visual assistance
set cursorline
set showcmd
set hlsearch

"" Line numbers
set number
set ruler

"" Much less thrashy
set wildmenu
set wildmode=longest:list

" smartindent will no longer make # start in the beginning 
" (useful only as C precompiler directives)

inoremap # X<BS>#

syntax on

autocmd FileType ruby setlocal softtabstop=2 shiftwidth=2
