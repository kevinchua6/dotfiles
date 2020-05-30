filetype plugin indent on

" recursive search on current directory to find files.
set path+=**

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

" compile, run, and pipe clipboard buffer to the program.
nnoremap <F11> :wa <CR> :!clear && g++ % -o %< && xclip -o <Bar> ./%< <CR>

" compile and run current file.
nnoremap <F10> :wa <CR> :!clear && g++ % -o %< && ./%< <CR>

" this one i use for idyll
nnoremap <F9> :wa <CR> :!make <CR>
