""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""    C:\winux\home\m\vimfiles\.vimrc    """"
"""""""""""""""""""""""""""""""""""""""""""""""

" Author: Morten Håkestad <mort1skoda@gmail.com>
" Github: https://github.com/mort1skoda/winux.git

echom $HOME . "\\vimfiles\\.vimrc"

let mapleader = ","

"--- vars -------------------------------------{{{
"   system vimrc file: "$VIM\vimrc"
nnoremap <Leader>sv :echom"system vimrc file:" $VIM."\\vimrc" <cr>

"     user vimrc file: "$HOME\_vimrc"
nnoremap <Leader>uv :echom"user vimrc file:" $HOME . "\\.vimrc" <cr>

" 2nd user vimrc file: "$HOME\vimfiles\vimrc"
nnoremap <Leader>2v :echom"2nd user vimrc file:" $HOME . "\\vimfiles" . "\\vimrc" <cr>

" 3rd user vimrc file: "$VIM\_vimrc"
"      user exrc file: "$HOME\_exrc"
"  2nd user exrc file: "$VIM\_exrc"
"       defaults file: "$VIMRUNTIME\defaults.vim"
"----------------------------------------------}}}


"--- folds -------------------{{{
setlocal foldmethod=marker
" ff = toogle one folder
nnoremap ff za
" fc = folder close all
nnoremap fc zm
" fo = folder open all
nnoremap fo zr
"-----------------------------}}}


"--- set ---{{{
set noswapfile
set nocompatible
"-----------}}}


"--- color ---{{{
colorscheme desert
filetype on
filetype plugin on
filetype indent on
syntax on
"-------------}}}


"--- mappings -----------------------------------------------{{{

" find in document use 'n' to find next
nnoremap <C-f> /

"nnoremap <mapleader>v :vs<CR>
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <S-L> 2<c-w><
nnoremap <S-H> 2<c-w>>



nnoremap o o<esc>:echo'open line below'<cr>
nnoremap O O<esc>:echo'Open line above'<cr>

nnoremap X i<space><esc>:echo'Normal X=insert space'<esc>
nnoremap x x:echo'Normal x=delete one char.'<cr>

nnoremap <space> :!

nnoremap å $

nnoremap <mapleader>ca 0i"<esc>j


"--- end of mappings ----------------------------------------------}}}


"--- save  /  quit --------{{{

set nowrap
"-TODO: adjust textwidth and wrap / nowrap acording to filetype:
" .vimrc c html large textwidth with wrap.
" .txt   .md    maybe  textwidth = 80  with wrap...
set textwidth=165
nnoremap <C-s> :w<cr>:source $HOME/vimfiles/.vimrc<cr>:echom"-- NORMAL -- saved ~\\vimfiles\\.vimrc"<cr>

inoremap <C-s> <esc>:w<cr>l:source .vimrc<cr>:echo'-- NORMAL -- save source'<cr>
cnoremap <C-s> <esc>:w <cr>:source .vimrc<cr>:echo'-- NORMAL -- save source'<cr>

nnoremap q     :q
nnoremap <C-q> :wq
inoremap <C-q> <esc>:wq
"-------------------------}}}


"--- plugins ---{{{

"call plug#begin('~/.vim/plugged')


"call plug#end()

"---------------}}}


"--- statusline ---{{{
set laststatus=2
set statusline=
set statusline+=%F
set statusline+=%=
set statusline+=row:%l\ col:%c\ percent:%p%%
"------------------}}}


