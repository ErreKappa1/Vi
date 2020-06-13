"Generic settigns
syntax on
set number
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab
set colorcolumn=120
set autoindent
highlight ColorColumn ctermbg=lightgray
set mouse=a

"GUI Settings
if has('gui_running')
	colorscheme slate
	set guifont=Hack\ 11
	map <C-Tab> gt
	map <C-S-Tab> gT
endif

"Project settings (Mostly based on C projects)
augroup project
	autocmd!
	autocmd BufRead,BufNewFile *.h,*.c set filetype=c
augroup END
set cin!

"Addedd packages
packadd termdebug

"Bindings
	"Normal mode
nnoremap zo o<esc>
nnoremap zO O<esc>
nmap z<down> zok
nmap z<up> zOj

		"F keys
nnoremap <F1> :make!<cr>
nnoremap <F4> :! ./gmake.sh<cr>
nnoremap <F5> :! clear ; ./x*<cr>
nnoremap <F9> :mksession! Vim/current.vim<cr>
nnoremap <F10> :source Vim/current.vim<cr>
nnoremap <F11> :! ~/Coding/Bash/randomScript/vimPull.sh<cr>
nnoremap <F12> :! ~/Coding/Bash/randomScript/vimPush.sh<cr>
	"Insert mode
	"Visual mode
	"Selcet	mode
	"CmdLin	mode
	"PendOp mode
