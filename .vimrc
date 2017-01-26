set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'sjl/gundo.vim'
Plugin 'klen/python-mode'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vinegar'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'ivanov/vim-ipython'

" All of your Plugins must be added before the following line
call vundle#end() 

"" Misc
filetype plugin indent on
syntax enable
set encoding=utf-8
set showcmd
set clipboard=unnamed

"" Look
set number
set ruler
set cursorline
colorscheme solarized
set background=dark
set laststatus=2

"" Whitespace
set tabstop=4
set shiftwidth=4
set expandtab
set bs=2
set textwidth=79

"" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

"" Remap 
inoremap jk <Esc>
map <Space> <leader>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"" Plugin Opts
let g:pymode_rope_completion = 0
let g:pymode_rope_completion_on_dot = 0
let g:pymode_lint_checkers = ['pyflakes', 'pep8', 'mccabe', 'pylint', 'pep257']
