" Vim filetype plugin file
" Language:		C
" Maintainer:	ErreKappa1
" Last Changed: 23/09/2020

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END
set cin

ab #i #include
ab #d #define
