runtime macros/matchit.vim
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
Plugin 'kana/vim-textobj-user'
Plugin 'rhysd/vim-textobj-ruby'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'niftylettuce/vim-jinja'
Plugin 'thoughtbot/vim-rspec'
Plugin 'jgdavey/tslime.vim'

" 
call vundle#end()           " required
filetype plugin indent on   " required

set number
set ruler
set encoding=utf8
set colorcolumn=80

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

" vim-markdown - disable folding
let g:vim_markdown_folding_disabled = 1

" syntax enable
syntax on
set background=dark
" colorscheme solarized
" colorscheme base16-eighties
" colorscheme base16-chalk
colorscheme hybrid

" let g:solarized_termcolors=256

" For sending spec to tmux
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
" vim-rspec key mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

