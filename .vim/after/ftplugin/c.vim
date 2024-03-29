" Vim filetype plugin file
" Language:		C
" Maintainer:	ErreKappa1
" Last Changed: 23/09/2020

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END
set cin
set foldmethod=manual
set colorcolumn=100
set tw=100
highlight ColorCulumn ctermbg=lightgray ctermfg=black
highlight OverLenght ctermbg=red ctermfg=white
match OverLength /\%101v.\+/
set textwidth=100

ab #i #include
ab #d #define
imap <C-D> if (DEBUG)<cr>printf("");<ESC>2hi
