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
map <Leader>n <esc>:tabnext<CR>

" Coder Settings
" ===========================
syntax on
