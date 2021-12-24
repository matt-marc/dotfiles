" NEOVIM
" Author: Mathieu Marchildon
" Last updated
"
call plug#begin('~/.config/nvim/plugged')

"FZF
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" auto-complete
" prereq:
" -pip install pynvim
" -pip install jedi
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi'

"QOL
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Code
Plug 'davidhalter/jedi-vim'

"Snips for Latex
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'

"Colours
Plug 'glepnir/oceanic-material'
Plug 'mhartington/oceanic-next'
Plug 'frazrepo/vim-rainbow'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }
Plug 'dracula/vim', { 'as': 'dracula' }

"Code fmt
Plug 'rhysd/vim-clang-format'
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'
call plug#end()

"Creates backup for vim files
set backupdir=~/.backup/,/tmp//
set directory=~/.swp/,/tmp//
set undodir=~/.undo/,/tmp//
set noswapfile

"Leader is comma
let mapleader=","

"Load last location
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

"FZF configs
nnoremap <C-p> :GFiles<CR>
nnoremap <leader>/ :BLines<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}
let $FZF_DEFAULT_COMMAND = 'ag -g '

"FMT settings
let g:deoplete#enable_at_startup = 1
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
set splitbelow
" disable autocompletion, because we use deoplete for completion
let g:jedi#completions_enabled = 0
" open the go-to function in split, not another buffer
let g:jedi#use_splits_not_buffers = "right"


syntax enable
filetype plugin indent on
syntax on
"
"Load colour brackets in cpp files
au BufEnter *.tpp :setlocal filetype=cpp


set tabstop=4
set softtabstop=4
set expandtab
set smartindent
set autoindent
filetype indent on

set number
"set relativenumber
set showcmd
set cursorline

set wildmenu

set lazyredraw
set showmatch

"inc and dec alpha
set nrformats+=alpha

"Colours
set background=dark
if exists('+termguicolors')
        let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
        let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
        set termguicolors
endif

"colorscheme jellybeans
colorscheme dracula
let g:airline_theme='jellybeans'
highlight RedundantSpaces ctermbg=red guibg=red
match RedundantSpaces /\s\+$/
let g:rainbow_active = 1 " sets rainbow brackets


"Mapping
nnoremap <F1> :setlocal spell! spelllang=en_ca<CR>
nnoremap <leader>j :nohlsearch<CR>
nnoremap <F5> :! make <CR>
nnoremap <F6> :execute "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>
nnoremap <leader>k :FormatCode <cr>

"Better nav
nnoremap B ^
nnoremap E $

"Delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

"Replace currently selected text with default register
"Without yanking it
vnoremap <leader>p "_dP

"folds
"set foldmethod=indent
"nnoremap <space> za
"vnoremap <space> zf

"substitute all occurrences of the word under the cursor:
nnoremap <leader>f :%s/\<<C-r><C-w>\>/

"This highlights text that was just inserted
nnoremap gV `[v`]


"Snipets stuff
let g:UltiSnipsSnippetDirectories=[$HOME.'/.config/nvim/UltiSnips']
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<s-tab>"

"Latex
let g:tex_flavor='latex'
let g:livepreview_cursorhold_recompile = 0 "Disables recompile during cursor pause
let g:vimtex_view_method='zathura'
set conceallevel=1
let g:tex_conceal='abdmg'

