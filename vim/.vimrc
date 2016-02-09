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

" Python Specific
" ==========================
" powerline
set laststatus=2
" ctrlp
let g:ctrlp_max_height = 30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/* 
" python mode
map <Leader>g :call RopeGotoDefinition()<CR>
let ropevim_enable_shortcuts = 1
let g:pymode_rope_goto_def_newwin = "vnew"
let g:pymode_rope_extended_complete = 1
let g:pymode_breakpoint = 0
let g:pymode_syntax = 1
let g:pymode_syntax_builtin_objs = 0
let g:pymode_syntax_builtin_funcs = 0
map <Leader>b 0import ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

set completeopt=longest,menuone
function! OmniPopup(action)
    if pumvisible()
        if a:action == 'j'
            return "\<C-N>"
        elseif a:action == 'k'
            return "\<C-P>"
        endif
    endif
    return a:action
endfunction

inoremap <silent><C-j> <C-R>=OmniPopup('j')<CR>
inoremap <silent><C-k> <C-R>=OmniPopup('k')<CR>

" python folding
set nofoldenable
