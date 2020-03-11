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

let g:gruvbox_guisp_fallback = "bg"
let g:gruvbox_color_column = "aqua"
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

" Enable folding
set foldmethod=indent
set foldlevel=99
set colorcolumn=120

" Vim start up
let g:rainbow_active = 1 " sets rainbow brackets
let g:gitgutter_enabled = 0 " disable git gutter default

highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
filetype indent on

set autoindent

" Mapping
nnoremap <F1> :setlocal spell! spelllang=en_ca<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <F3> :nohlsearch<CR>
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

" snipets stuff
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

" latex
let g:livepreview_cursorhold_recompile = 0 "Disables recompile during cursor pause
set conceallevel=1
let g:tex_conceal='abdmg'

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
Plugin 'airblade/vim-gitgutter'
Plugin 'davidhalter/jedi-vim'
Plugin 'lervag/vimtex'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'SirVer/ultisnips'
call vundle#end()
filetype plugin indent on
