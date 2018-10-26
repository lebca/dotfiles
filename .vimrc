set nocompatible              " be iMproved, required 

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $HOME/.vimrc
endif

call plug#begin('~/.vim/plugged')
" plugin on GitHub repo 
Plug 'altercation/vim-colors-solarized'
Plug 'flazz/vim-colorschemes'
" All of your Plugins must be added before the following line 
call plug#end() 

syntax on

set history=700
set encoding=utf-8
setglobal fileencoding=utf-8

" Text display 
set textwidth=100

" No sound on errors 
set noerrorbells
set novisualbell " Use visual bell instead of beeping for error 

" Indentation 
set softtabstop=2
set shiftwidth=2
set expandtab

" Coloring 
colors solarized
let g:solarized_termtrans = 1
" let background=dark
