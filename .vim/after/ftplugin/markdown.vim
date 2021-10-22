" Vim filetype plugin file
" Language:		Markdown
" Manteiner:	ErreKappa1
" Last Changed:	18/09/2021

"clean, but only temp files
map <F3> :!rm %:r.html, %:r.pdf <cr>
"compile the tex to a pdf
map <silent> <F4> :wa<cr> :!markdown % > %:r.html; firefox %:r.html &<cr>
map <silent> <F5> :wa<cr> :!pandoc % -o %:r.pdf; mupdf %:r.pdf & <cr>

"show indentation levels in a convenient way
set list
set list lcs=tab:\|\ 
