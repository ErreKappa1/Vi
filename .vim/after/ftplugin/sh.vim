set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set colorcolumn=80
set tw=80
highlight ColorColumn ctermbg=lightgray
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
unmap <F1>
unmap <F4>
unmap <F5>
unmap <F8>

map <F5> :! bash %<cr>
