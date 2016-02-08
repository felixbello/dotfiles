" General Settings
" ============================
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc %

" Copy & Paste
set clipboard=unnamed

" Show Line numbers
set number

" Keys
let mapleader = ","

" movement
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>

" backup files
set nobackup
set nowritebackup
set noswapfile

" Coder Settings
" ===========================
" Syntax
syntax on

" sorting
vnoremap <Leader>s :sort<CR>

" style
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" move code block
vnoremap < <gv
vnoremap > >gv
