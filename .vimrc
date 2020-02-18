" My vimrc
" Author: Mathieu Marchildon
" Last updated


" Reamaps
syntax enable
syntax on

colorscheme gruvbox
set background=dark

let mapleader=","       " leader is comma
set noswapfile

set tabstop=4
set softtabstop=4
set expandtab

set number
set relativenumber
set showcmd
set cursorline

set wildmenu

set lazyredraw
set showmatch

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

let g:rainbow_active = 1 " sets rainbow brackets

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
filetype indent on
set autoindent

" Mapping
nnoremap <F3> :nohlsearch<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F4> :TagbarToggle<CR>

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

" Enable folding
set foldmethod=indent
set foldlevel=99

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
Plugin 'morhetz/gruvbox'
Plugin 'frazrepo/vim-rainbow'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
call vundle#end()
filetype plugin indent on
