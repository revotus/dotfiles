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

set colorcolumn=79

let g:airline_theme='solarized'

" Syntastic
let g:syntastic_python_checkers = ['python', 'pylint', 'pylama', 'pk3kwarn']
let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_loc_list_height=5
let g:syntastic_python_pylama_args = "-o ~/.config/pylama.ini"
