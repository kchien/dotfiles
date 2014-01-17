set nocompatible
set autoindent
set number
set history=50
set ruler
set incsearch

if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

let mapleader=","

function! ClearTrailingWhitespace()
  :%s/\s\+$//
endf
map <leader>c :call ClearTrailingWhitespace()<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ConvertCamelToSnake 
" Not perfect since the leading char will have an underscore in front of it.
" Need to fix up...
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ConvertCamelToSnake()
  :s/\([A-Z]\)/_\l\1/g
endf
map <leader>s :call ConvertCamelToSnake()<CR>

" PromoteToLet() below shamelessly taken from Gary Bernhardt's .vimrc
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PROMOTE VARIABLE TO RSPEC LET
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! PromoteToLet()
  :normal! dd
  " :exec '?^\s*it\>'
  :normal! P
  :.s/\(\w\+\) = \(.*\)$/let(:\1) { \2 }/
  :normal ==
endfunction
:command! PromoteToLet :call PromoteToLet()
:map <leader>p :PromoteToLet<cr>


