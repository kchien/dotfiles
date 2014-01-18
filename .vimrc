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
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ConvertCamelToSnake()
  "only look for capital letters after _, lowercase letters, and digits
  :s/\([_a-z0-9]\)\([A-Z]\)/\1_\l\2/g
  :normal gu$
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


