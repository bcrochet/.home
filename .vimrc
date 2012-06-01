call pathogen#infect()
call pathogen#helptags()

set hidden
set wildchar=<Tab> wildmenu wildmode=full
set expandtab
set tabstop=4
set shiftwidth=4
set incsearch ignorecase hlsearch
" Press space to clear search highlighting and any message already displayed.
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

let g:slimv_swank_cmd = '! xterm -e lein swank &'
syntax on
filetype plugin indent on

colorscheme elflord

