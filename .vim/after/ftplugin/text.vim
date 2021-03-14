" Vim filetype plugin file
" Language:		txt
" Manteiner:	ErreKappa1
" Last Changed:	06/11/2020

set list
set listchars=tab:▸\ ,trail:▫
highlight Comments ctermbg=yellow ctermfg=black guibg=#FFFF00
match Comments M//.*M
