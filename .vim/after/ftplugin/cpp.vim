" Vim filetype plugin file
" Language:		C++
" Maintainer:	ErreKappa1
" Last Changed: 23/09/2020

augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.cpp set filetype=cpp
augroup END
set cindent
set smartindent

"Autocomplete
ab #i #include
ab #d #define
