" Vim filetype plugin file
" Language:		Markdown
" Manteiner:	ErreKappa1
" Last Changed:	18/09/2021

"clean, but only temp files
map <F3> :!rm %:r.html, %:r.pdf <cr>
"compile the tex to a pdf
map <silent> <F4> :wa<cr> :!markdown % > %:r.html; firefox %:r.html &<cr>
map <silent> <F5> :wa<cr> :!pandoc % -o %:r.pdf; mupdf %:r.pdf & <cr>
map <silent> <space><space> :wa<cr> :!pandoc --from markdown+pipe_tables --listings --template eisvogel.latex --output ./%:r.pdf %; mupdf %:r.pdf <cr>

"show indentation levels in a convenient way
set list
set list lcs=tab:\|\ 

"add a timestamp using <c-g> t
function! InsertTimeStamp()
   call complete(col('.'), [strftime("%Y-%m-%d"), strftime("%Y-%m-%dT%H:%M"), strftime("%d. %B %Y"), strftime("%H:%M")])
   return ''
endfunction

inoremap <C-g>t <C-R>=InsertTimeStamp()<CR>

"set text error highlights
setlocal spell spelllang=en_us
setlocal spell spelllang+=it
