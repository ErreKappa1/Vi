syntax on
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=120
highlight ColorColumn ctermbg=lightgray
set mouse=a
set makeprg=make\ -C\ ../build\ -j9
nnoremap <F4> :make!<cr>
nnoremap <F5> $HOME
if has('gui_running')
	colorscheme slate
endif
set cin!
