" My vimrc
" Author: Mathieu Marchildon
" Last updated


" Reamaps
syntax enable
syntax on

filetype plugin indent on

" Creates backup for vim files
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//

let mapleader=","       " leader is comma
set noswapfile

set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
filetype indent on

set number
set relativenumber
set showcmd
set cursorline

set wildmenu

"set lazyredraw
set showmatch

set incsearch           " search as characters are entered

" Enable folding
set foldmethod=indent
set foldlevel=99
" set colorcolumn=120

" Vim start up
let g:rainbow_active = 1 " sets rainbow brackets
let g:gitgutter_enabled = 0 " disable git gutter default

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/

let NERDTreeIgnore=['\.o$', '\~$','\.pyc']


" Mapping
nnoremap <F1> :setlocal spell! spelllang=en_ca<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :nohlsearch<CR>
nnoremap <F4> :TagbarToggle<CR>
nnoremap <F5> :! make <CR>
nnoremap <F6> :execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>

" better nav
nnoremap B ^
nnoremap E $

" $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

" this highlights text that was just inserted
nnoremap gV `[v`]

" Why escape so far
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

execute "set <M-j>=\ej"
execute "set <M-k>=\ek"

" moving lines around in all modes
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==

inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

" snipets stuff
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" latex
let g:tex_flavor='latex'
let g:livepreview_cursorhold_recompile = 0 "Disables recompile during cursor pause
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

set nocompatible
filetype off
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'frazrepo/vim-rainbow'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'davidhalter/jedi-vim', { 'for': 'python'}
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview'
Plug 'SirVer/ultisnips'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
Plug 'drewtempelmeyer/palenight.vim'
call plug#end()


set background=dark
let g:gruvbox_guisp_fallback = "bg"
colorscheme gruvbox
let g:airline_theme = "gruvbox"


highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
