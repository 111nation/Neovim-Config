" --- Basic Settings ---
set encoding=utf-8
set number
set relativenumber
set wrap
set background=dark
syntax on
set clipboard=unnamedplus
filetype off

" --- Tabs and Indentation ---
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on

" --- Search ---
set hlsearch
set incsearch
set ignorecase
set smartcase
set nohlsearch

" --- Mouse and UI ---
set mouse=a
set ruler
set showmatch
set wildmenu
set scrolloff=20
" set cursorline
colorscheme vim

" --- Clipboard ---
set clipboard=unnamedplus

" --- Status Line ---
set statusline=%f\ %y\ %m\ %r\ %=%l/%L\ %p%%\ %c

" --- Line Behaviour ---
set virtualedit=onemore
set wrap
set showbreak=...

" --- Remapping ---
nnoremap <C-Right> w     " Move forward by word with Ctrl+Right
nnoremap <C-Left> b      " Move backward by word with Ctrl+Left

nnoremap <Down> gj
nnoremap <Up> gk
nnoremap j gj
nnoremap k gk

" Saving
nnoremap <C-s> <Esc>:w<CR>
noremap <C-s> <Esc>:w<CR>
inoremap <C-s> <Esc>:w<CR>i
vnoremap <C-s> <Esc>:w<CR>v

" Select all
nnoremap <C-a> <Esc>gg<S-V>G
inoremap <C-a> <Esc>gg<S-V>G

call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm() : "\<CR>"
