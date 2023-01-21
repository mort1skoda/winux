echom"---- Sourcing my main _vimrc file: $HOME\\_vimrc = C:\\winux\\home\\m\\_vimrc"

" Author: Morten Håkestad <mort1skoda@gmail.com>
" Github: https://github.com/mort1skoda/winux.git
" If you want to change/add/delete stuff:
" No need to edit this file:
" Just source another file at the end of this file!
" Example: 
" source $HOME/.vimrc

"--- set ---{{{
set noswapfile			" do not create the ~ files
set nocompatible		" turn off old vi stuff
set list		" show $ end of line

set nowrap

"-TODO: adjust textwidth and wrap / nowrap acording to filetype:
" .vimrc c html large textwidth with wrap.
" .txt   .md    maybe  textwidth = 80  with wrap...
"set textwidth=165
"-----------}}}


set gfn=Consolas:h9:cANSI:qDRAFT
echo "set gfn=Consolas:h9:cANSI:qDRAFT"

nnoremap å $:echo" -- NORMAL -- å=$=end of line"<cr>
nnoremap Y y$:echo" --NORMAL -- Y=copy from cursor to end of line"<cr>
nnoremap o o<esc>:echo" -- NORMAL -- o=open line below"<cr>
nnoremap O O<esc>:echo" -- NORMAL -- o=open line below"<cr>
 
let mapleader = ","
nnoremap <Leader>v :vs<cr>:edit $HOME/_vimrc<cr>







nnoremap <esc> <esc>:echo" -- NORMAL -- esc=back to normal"<cr>


:echo" -- NORMAL -- Hello Morty, welcome!"

