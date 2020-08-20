" install pathogen plugins
silent! execute pathogen#infect()

" enable syntax highlighting
syntax on

" bump lines saved to 10k and buffers to 1mb
set viminfo='20,<10000,s1000

" enable line numbers
set number

" tab -> space options
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab

" use 2 space tabs in js files
autocmd Filetype javascript setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype json setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype *.pug setlocal ts=2 sw=2 sts=0 expandtab

" column ruler
set ruler

" key mappings
" use comma for leader key
let mapleader=","

" ctag mappings
nnoremap <leader>. <C-]>
nnoremap <leader>, <C-t>
nnoremap <leader>/ :tn<CR>
nnoremap <leader>m :tp<CR>
