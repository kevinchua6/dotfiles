filetype plugin indent on

" recursive search on current directory to find files.
set path+=**

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
      \   'helloworld': 'hello, *nix*orn!'
      \ },
      \ }

" muh numbers
set relativenumber

" two spaces are way cooler than four.
set shiftwidth=2
set tabstop=2
set autoindent
set smartindent

syntax on
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
