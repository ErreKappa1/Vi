" Vim filetype plugin file
" Language:		tex
" Manteiner:	ErreKappa1
" Last Changed:	18/09/2021

"clean, even pdfs
map <F2> :!rm %:r.log %:r.aux %:r.pdf %:r.toc <%:r.idx<cr>
"clean, but only temp files
map <F3> :!rm %:r.log %:r.aux %:r.toc %:r.idx<cr>
"compile the tex to a pdf
map <F4> :wa<cr> :!clear ; pdflatex % <cr>
map <silent> <space><space> :wa<cr> :!clear ; pdflatex % <cr>
"start the live preview of the pdf (do not compile)
map <F5> :LLPStartPreview <cr>
map <silent> <space>p :LLPStartPreview <cr>

"show indentation levels in a convenient way
set list
set list lcs=tab:\|\ 

"set text error highlights
setlocal spell spelllang=en_us
setlocal spell spelllang+=it
