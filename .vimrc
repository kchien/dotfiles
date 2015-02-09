execute pathogen#infect()
set nocompatible
set autoindent
set number
set history=50
set ruler
set incsearch
" Remove all autocommands for the current group, so autocommands will not appear twice
" when sourcing the .vimrc twice.
autocmd!

"""""""""""""""""""
" indentation
"""""""""""""""""""
filetype plugin indent on
autocmd FileType html,ruby setlocal shiftwidth=2

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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" convertsnaketocamel
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ConvertSnakeToCamel()
  "incomplete: doesn't capitalize the first character, but capitalizes every letter after an underscore
  :s/_\([a-z0-9]\)/\U\1/g
  :normal gu$
endf
""leader j for Java since camel case is popular in that language...
map <leader>j :call ConvertSnakeToCamel()<CR>

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


