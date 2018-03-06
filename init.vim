call plug#begin('~/.local/share/nvim/plugged')

Plug 'dag/vim-fish'
Plug 'altercation/vim-colors-solarized'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'vim-syntastic/syntastic'

call plug#end()

imap jk <Esc>
map <Space> <leader>

set expandtab
set shiftwidth=4
set softtabstop=4

let g:airline_theme='solarized'
