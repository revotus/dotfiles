set nocompatible              " be iMproved, required
call plug#begin('~/.vim/plugged')

Plug 'altercation/vim-colors-solarized'
Plug 'jlanzarotta/bufexplorer'
Plug 'sjl/gundo.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'kien/ctrlp.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plug 'cjrh/vim-conda'
Plug 'elzr/vim-json'
Plug 'tmhedberg/SimpylFold'
Plug 'vim-scripts/indentpython.vim'
Plug 'scrooloose/syntastic'
Plug 'vim-python/python-syntax'
Plug 'dccmx/google-style.vim'

call plug#end()

" Misc
filetype plugin indent on
syntax enable
set encoding=utf-8
set showcmd
set clipboard=unnamed
set hidden
set title

" Look
set number
set ruler
" set cursorline
colorscheme solarized
set background=dark
call togglebg#map("<F6>")
set laststatus=2
set colorcolumn=80
let python_highlight_all=1

" Whitespace
set textwidth=80
set formatoptions=cq
set shiftwidth=4
set tabstop=4
set expandtab
set softtabstop=4
set shiftround
set autoindent
set bs=2
"define BadWhitespace before using in a match
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Search
set hlsearch
set incsearch
set ignorecase
set smartcase

" Remap
inoremap jk <Esc>
map <Space> <leader>
nnoremap <F4> :CondaChangeEnv<CR>
nnoremap <F5> :GundoToggle<CR>

" Split Navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_python_binery_path = 'python'
nnoremap <leader>h :YcmCompleter GoTo<CR>
nnoremap <leader>g  :YcmCompleter GoToDefinition<CR>

" Syntastic
let g:syntastic_python_checkers = ['python', 'pylint', 'pylama', 'pk3kwarn']
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:syntastic_python_pylama_args = "-o ~/.config/pylama.ini"

" SimplyFold
let g:SimpylFold_docstring_preview=1

" Conda
let g:conda_startup_msg_suppress = 1
