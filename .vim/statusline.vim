"Statusline

let s:batteryLevel = ''

function! SetBatteryLevel(timer_id)
  let l:batteryLevel = system('acpi | grep -oP "(\d+)%" | tr -d "\n"')
  if (l:batteryLevel != '')
    let s:batteryLevel = l:batteryLevel
    redraw!
  endif
  call timer_start(100000, 'SetBatteryLevel')
  return s:batteryLevel
endfunction

function! GitBranchFind()
	let l:branchName = system("git rev-parse –-abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
	return l:branchName
endfunction

function! StatuslineGit()
	let l:branchName = GitBranchFind()
	if strlen(l:branchName) > 0
		return ' '.l:branchName.' '
	else
		return ' '
	endif
endfunction

set laststatus=2
set statusline+=%#Cursor#
"set statusline+=%{StatuslineGit()}
set statusline+=%<%f\ 
set statusline+=%y
set statusline+=%m
set statusline+=%r
set statusline+=%=
"set statusline+=%#VertSplit#
"set statusline+=%{SetBatteryLevel(0)}
set statusline+=%#Cursor#
set statusline+=\ %n\ 
set statusline+=%-12.(%l,%c%V%)\ 
set statusline+=%P

"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

