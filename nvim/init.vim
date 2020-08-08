if empty(glob(stdpath("data") . "/site/autoload/plug.vim"))
  silent !sh -c 'curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
              \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin(stdpath("config") . '/plugged')

Plug 'dag/vim-fish'
Plug 'overcache/NeoSolarized'
Plug 'jlanzarotta/bufexplorer'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-commentary'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
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
set background=dark
set termguicolors
let g:neosolarized_contrast = "low"
colorscheme NeoSolarized

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
