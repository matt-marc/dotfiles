au FileType c,cpp,objc,objcpp call rainbow#load()

let g:clang_format#code_style="llvm"

let g:clang_format#style_options = {
            \ "IndentWidth" : 4,
            \ "AccessModifierOffset" : -2,
            \ "AllowShortIfStatementsOnASingleLine" : "true",
            \ "AlwaysBreakTemplateDeclarations" : "true"}

function FormatFile()
        :ClangFormat
endfunction

nnoremap <leader>k :call FormatFile() <cr>

set autoindent
set cindent
set shiftwidth=2
set expandtab

let g:deoplete#enable_at_startup = 0
let g:deoplete#disable_auto_complete = 1

map <leader>c :s/^/\/\//<Enter>
map <leader>u :s/^\/\///<Enter>


inoremap <leader>n << '\n';
nnoremap <leader>n <Esc>i << '\n'; <Esc>
