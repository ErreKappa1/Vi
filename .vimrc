syntax on
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=120
set autoindent
packadd termdebug
highlight ColorColumn ctermbg=lightgray
set mouse=a
if has('gui_running')
	colorscheme slate
	set guifont=Hack\ 11
endif
augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END
set cin!
nnoremap <F1> :make!<cr>
nnoremap <F4> :! ./gmake.sh<cr>
nnoremap <F5> :! clear ; ./x*<cr>
nnoremap <F9> :mksession! Vim/current.vim<cr>
nnoremap <F10> :source Vim/current.vim<cr>
nnoremap <F12> :tabe<cr>
