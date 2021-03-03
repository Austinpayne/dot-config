" install pathogen plugins
" (only if using > vim8)
silent! execute pathogen#infect()
" setup fzf main plugin path
set rtp+=/usr/local/opt/fzf

" enable syntax highlighting
syntax on

" bump lines saved to 10k and buffers to 1mb
set viminfo='20,<10000,s1000
" normal backspace
set backspace=indent,eol,start

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
autocmd Filetype yaml setlocal ts=2 sw=2 sts=0 expandtab
autocmd Filetype html setlocal ts=2 sw=2 sts=0 expandtab

" column ruler
set ruler
set laststatus=2
set statusline=%F\ %h%w%m%r\ %=%(%l,%c%V\ %=\ %p%%\ %)

" key mappings
" use comma for leader key
let mapleader=","

" ctag mappings
" goto definition
nnoremap <leader>. <C-]>
" unwind tag stack
nnoremap <leader>, <C-t>
" next tag
nnoremap <leader>/ :tn<CR>
" previous tag
nnoremap <leader>m :tp<CR>
" show tag list
nnoremap <leader>l :ts<CR>

" show/hide cursor column/line
nnoremap <leader>cc :set cursorcolumn cursorline<CR>
nnoremap <leader>cl :set nocursorcolumn nocursorline<CR>

" splits
set splitbelow
set splitright
" move left
nnoremap <C-H> <C-W><C-H>
" move bottom
nnoremap <C-J> <C-W><C-J>
" move top
nnoremap <C-K> <C-W><C-K>
" move right
nnoremap <C-L> <C-W><C-L>
" swap top/bottom or left/right
nnoremap <C-R> <C-W><C-R>

" fzf file search
nnoremap <C-P> :Files<CR>
" select all
nnoremap <C-A> ggVG
" forward serch word under cursor
nnoremap <C-F> *
" reverse search word under cursor
nnoremap <C-R> #
