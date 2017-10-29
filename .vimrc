set bg=dark
syntax on

set encoding=utf-8	" The encoding displayed
set fileencoding=utf-8	" The encoding written to file

set expandtab
filetype plugin indent on
autocmd Filetype javascript,html setlocal ts=2 sts=2 sw=2

" vim-jsx options
let g:jsx_ext_required=0	" allow JSX within JS files
