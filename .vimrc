" My vimrc
" Author: Mathieu Marchildon
" Last updated


"Reamaps
syntax enable
syntax on

filetype plugin indent on

"Creates backup for vim files
set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//
set noswapfile

"Leader is comma
let mapleader=","

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

set redrawtime=10000

set wildmenu

set lazyredraw
set showmatch

"search as characters are entered
set incsearch

"Enable folding
set foldmethod=indent
set foldlevel=99

"inc and dec alpha
set nrformats+=alpha

"Vim start up
let g:rainbow_active = 1 " sets rainbow brackets
let g:gitgutter_enabled = 0 " disable git gutter default

"Load colour brackets in cpp files
au FileType c,cpp,objc,objcpp call rainbow#load()

"Hide certain files in nerd tree
let NERDTreeIgnore=['\.o$', '\~$','\.pyc']


" #######
" Mapping
" #######
nnoremap <F1> :setlocal spell! spelllang=en_ca<CR>
nnoremap <F2> :NERDTreeToggle<CR>
nnoremap <leader>j :nohlsearch<CR>
nnoremap <F5> :! make <CR>
nnoremap <F6> :execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>

"Better nav
nnoremap B ^
nnoremap E $

"$/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>

"Delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

"Replace currently selected text with default register
"Without yanking it
vnoremap <leader>p "_dP

"This highlights text that was just inserted
nnoremap gV `[v`]

"Why escape so far
nmap <c-c> <esc>
imap <c-c> <esc>
vmap <c-c> <esc>
omap <c-c> <esc>

"Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

execute "set <M-j>=\ej"
execute "set <M-k>=\ek"

"Moving lines around in all modes
nnoremap <M-j> :m .+1<CR>==
nnoremap <M-k> :m .-2<CR>==

inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi

vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

function FormatFile()
  let l:lines="all"
  py3f ~/clang-format.py
endfunction
nnoremap <leader>k :call FormatFile() <cr>

"Snipets stuff
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"Latex
let g:tex_flavor='latex'
let g:livepreview_cursorhold_recompile = 0 "Disables recompile during cursor pause
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

set nocompatible
filetype off
filetype plugin indent on

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'frazrepo/vim-rainbow'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'davidhalter/jedi-vim', { 'for': 'python'}
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
call plug#end()

set background=dark
if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
endif

colorscheme onehalfdark
let g:airline_theme = 'onehalfdark'


highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
