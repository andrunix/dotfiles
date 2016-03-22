
set nocompatible 
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" other plugins go here
" Plugin 'bling/vim-airline'
" Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-gitgutter'
Plugin 'chriskempson/base16-vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'kchmck/vim-coffee-script'
Plugin 'elzr/vim-json'
Plugin 'kien/ctrlp.vim'
Plugin 'digitaltoad/vim-jade'
Plugin 'elixir-lang/vim-elixir'
Plugin 'scwood/vim-hybrid'

" let g:airline_theme='luna'
" let g:airline#extensions#tabline#entabled = 1

" 
call vundle#end()           " required
filetype plugin indent on   " required

" set number
set ruler
set encoding=utf8
" set colorcolumn=80
"
"
set number

" set tabstop=4 softtabstop=0 noexpandtab shiftwidth=4
set tabstop=2 shiftwidth=2

" Indentation
" set expandtab
set smarttab
" set shiftwidth=2
" set softtabstop=2
set ai
set si

" Files
set nobackup
set nowritebackup
set noswapfile
set history=50

" let base16colorspace=256

" syntax enable
syntax on
set background=dark
" colorscheme solarized
" colorscheme base16-eighties
" colorscheme base16-chalk
colorscheme hybrid

" let g:solarized_termcolors=256

