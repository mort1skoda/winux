""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""    C:\winux\home\m\vimfiles\.vimrc    """"
"""""""""""""""""""""""""""""""""""""""""""""""

" Author: Morten Håkestad <mort1skoda@gmail.com>
" Github: https://github.com/mort1skoda/winux.git


"let user know that this .vimrc file is sourced:
echom "2. source: " . $HOME . "\\vimfiles\\.vimrc"


"--- information: source sequence vimrc files ------------------------------------{{{
"-TODO: Maybe should make this a seperat tool ???
"I do NOT use a .vimrc in $HOME
"1. sourced file: C:\winux\bin\vim\vim90\defaults.vim
"At end of defaults.vim $HOME/vimfiles/.vimrc (this file) is sourced
"
"If you don't want to source defaults.vim first:
"create .vimrc in $HOME and have one line at the top:
"source $HOME/vimfiles/.vimrc   (this file)
"------------------------------------------------------------}}}


" set font for gui gvim.  TODO:maybe it must go into: .gvimrc
"set gfn='DejaVu_Sans_Mono:h9:cANSI:qDRAFT'
set gfn=Consolas:h9:cANSI:qDRAFT

let mapleader = ","
nnoremap <Leader>ev :vs<cr>:edit $HOME/vimfiles/.vimrc<cr>


"--- variables -------------------------------------{{{
"   system vimrc file: "$VIM\vimrc"
nnoremap <Leader>sv :echom"system vimrc file:" $VIM."\\vimrc" <cr>

"     user vimrc file: "$HOME\_vimrc"
nnoremap <Leader>uv :echom"user vimrc file:" $HOME . "\\.vimrc" <cr>

" 2nd user vimrc file: "$HOME\vimfiles\vimrc"
nnoremap <Leader>2v :echom"2nd user vimrc file:" $HOME . "\\vimfiles" . "\\.vimrc" <cr>

" 3rd user vimrc file: "$VIM\_vimrc"
nnoremap <Leader>3v :echom"3rd user _vimrc file:" $VIM."\\_vimrc" <cr>

"      user exrc file: "$HOME\_exrc"
"  2nd user exrc file: "$VIM\_exrc"
"       defaults file: "$VIMRUNTIME\defaults.vim"

let FILENAME=expand('%:p')

"----------------------------------------------}}}


"--- set ---{{{
set noswapfile
set nocompatible
set nowrap
"-TODO: adjust textwidth and wrap / nowrap acording to filetype:
" .vimrc c html large textwidth with wrap.
" .txt   .md    maybe  textwidth = 80  with wrap...
set textwidth=165
" show $ sign at end of lines  
set list
"-----------}}}


"--- folds -------------------{{{
"setlocal foldmethod=marker
set foldmethod=marker

" ff = toogle one folder
nnoremap ff za
" fc = folder close all
nnoremap fc zm
" fo = folder open all
nnoremap fo zr
"-----------------------------}}}


"--- color ---{{{
colorscheme molokai 
filetype on
filetype plugin on
filetype indent on
syntax on
"-------------}}}


"--- panes ---------------------------------------------{{{
set splitright

"vertical split pane
"nnoremap <mapleader>vv :vs<CR>
"realy no need for ,vv it is equally easy to use :vs
"vertical split pane :vs
"horizontal split pane :sp
nnoremap <C-l> <C-w>l
nnoremap <C-h> <C-w>h
nnoremap <S-L> 2<c-w><
nnoremap <S-H> 2<c-w>>
"-------------------------------------------------------}}}


" find in document use 'n' to find next
nnoremap <C-f> /



"--- movment in normal mode -----------------------{{{
nnoremap w W
nnoremap b B
nnoremap W w
nnoremap B b
nnoremap <C-e> 2<C-y>
nnoremap <C-b> 2<C-e>

"-----------------------------------------------}}}


nnoremap o o<esc>:echo'open line below'<cr>
nnoremap O O<esc>:echo'Open line above'<cr>



nnoremap å $
vnoremap å $


",ca = insert comment " at col:1 (comment for .vimrc)
nnoremap <Leader>ca 0i"<esc>j


"--- normal mode edit ------------------------------------------------------------------{{{
nnoremap <space> i<space><esc>l:echom"N->N space = insert space in normal mode"<cr>
nnoremap x x:echo'N->N x = delete char at cursor'<cr>
nnoremap <tab> i<space><space><space><space><space><esc>:echom"-- NORMAL -- tab = insert 4 spaces"<cr>
"---------------------------------------------------------------------------------}}}


"--- shell command --------------------------{{{
" shift+space
nnoremap <S-space> :!
"---------------------------------------}}}


"--- yank delete change paste visual ---------------------------------{{{
"Yank
nnoremap Y y$:echom"Yanked from cursor to end of line"<cr>

"Delete

"Change

"Paste
nnoremap P P:echom"N->N P=Paste at cursor"<cr> 
nnoremap p p:echom"N->N p=paste after cursor"<cr>

"Visual
"--------------------------------------------------------------}}}


"--- plugins ---{{{

"call plug#begin('~/.vim/plugged')


"call plug#end()

"---------------}}}


"--- esc (mapped to caps lock) -------------------------------------------------------{{{
nnoremap <esc> :echom'N->N esc = back to normal mode'<cr>
inoremap <esc> <esc>l:echo"I->N esc = back to normal from insert mode"<cr>
cnoremap <esc> <esc>:echo"-- NORMAL --  esc = back to normal from comand mode"<cr>
vnoremap <esc> <esc>:echo"-- NORMAL --  esc = back to normal from visual mode"<cr>
"----------------------------------------------------------------------------------}}}


"--- statusline ---{{{
set laststatus=2
set statusline=
set statusline+=\ %f
set statusline+=\ %y
set statusline+=%=
"set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
"set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 
"------------------}}}


"--- save  /  quit --------{{{
"-TODO: maybe create functions for these compund statments...???

let _FILENAME = expand('%:t')

nnoremap <C-s> :w<cr>:source $HOME/vimfiles/.vimrc<cr>:echo"Nor->Nor saved: " . _FILENAME . " - sourced: ~\\vimfiles\\.vimrc"<cr>
inoremap <C-s> <esc>:w<cr><esc>:w<cr>l:source $HOME/vimfiles/.vimrc<cr>:echo"Ins->Nor saved: " . _FILENAME . " - sourced: ~\\vimfiles\\.vimrc"<cr>
cnoremap <C-s> <esc>:w<cr>:source $HOME/vimfiles/.vimrc<cr>:echom"Com->Nor saved: " . _FILENAME . " - sourced: ~\\vimfiles\\.vimrc"<cr>
vnoremap <C-s> <esc>:w<cr>:source $HOME/vimfiles/.vimrc<cr>:echom"Vis->Nor sav:".expand('%')." - source:\\vimfiles\\\/.vimrc"<cr>

nnoremap q     :q
nnoremap <C-q> :wq
inoremap <C-q> <esc>:wq
"-------------------------}}}


