filetype plugin indent on

" lightline
set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'readonly', 'filename', 'modified', 'helloworld' ] ]
      \ },
      \ 'component': {
      \   'helloworld': 'Hello!!'
      \ },
      \ }

" muh numbers
" set relativenumber
:set relativenumber number
syntax on

" two spaces are way cooler than four.
set autoindent
set expandtab
set linebreak
set nocompatible
set shiftwidth  =2
set tabstop     =2
" set softtabstop =4
set smartindent
set wrap
set whichwrap+=<,>,h,l,[,]
set scrolloff=1
set ruler
set mouse=a

set encoding=utf-8
set clipboard=unnamedplus

" copy the whole buffer.
nnoremap <C-c> :%y+ <CR>

" compile, run, and pipe clipboard buffer to the program. useful for cp
nnoremap <F11> :wa <CR> :!clear && g++ % -o %< && xclip -o <Bar> ./%< <CR>

" compile and run current file.
nnoremap <F10> :wa <CR> :!clear && g++ % -o %< && ./%< <CR>

" this one i use for projects in current devel
nnoremap <F9> :wa <CR> :!make <CR>

" quality of life stuff
imap jj <Esc>
