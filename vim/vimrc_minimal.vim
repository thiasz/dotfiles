" Set leader key
let mapleader = " "

" Open netrw with <leader>cd
nnoremap <leader>- :Ex<CR>

" Scroll half-page and center cursor
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Center on next/previous search result
nnoremap n nzzzv
nnoremap N Nzzzv

" Paste without overwriting clipboard
xnoremap <leader>p "_dP
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" Disable Ex mode (accidental Q)
nnoremap Q <nop>

" Doge doc generator
nnoremap <leader>dg :DogeGenerate<CR>

" Substitute word under cursor on line
nnoremap <leader>s :s/\<<C-r><C-w>\>//gI<Left><Left><Left>

" Yank via OSCYank
" nmap <leader>y <Plug>OSCYankOperator
" vmap <leader>y <Plug>OSCYankVisual

" Source current file
" nnoremap <leader><leader> :so<CR>

" OPTIONS
filetype plugin indent on
set softtabstop=4
set smartindent
set showmatch
syntax on
" Line numbers
set number
set relativenumber

" Indentation and tabs
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

" Search
set ignorecase
set smartcase
set incsearch

" Appearance
set termguicolors
set background=dark
" set signcolumn=yes
set cursorline
set colorcolumn=80

" Backspace behavior
set backspace=indent,eol,start

" Split window behavior
set splitbelow
set splitright

" dw/diw/ciw treat dash-separated words as single word
set iskeyword+=-

" Keep cursor 8 lines from top/bottom
set scrolloff=8

" Cursor responsiveness
set updatetime=50

set laststatus=2
