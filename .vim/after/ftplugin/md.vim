" Vim filetype plugin file
" Language:		tex
" Manteiner:	ErreKappa1
" Last Changed:	18/09/2021

"clean, but only temp files
map <F3> :!rm %:r.html <cr>
"compile the tex to a pdf
map <F4> :wa<cr> :!clear ; markdown % > %:r.html; firefox %:r.html <cr>

"show indentation levels in a convenient way
set list
set list lcs=tab:\|\ 
