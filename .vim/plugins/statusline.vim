"Statusline

let s:batteryLevel = ''
let s:hour = system("date '+%I:%M' | tr -d '\n'")
let s:whoAmI = system("whoami| tr -d '\n'")
let s:term = system("echo $TERM | tr -d '\n'")

function! SetBatteryLevel(timer_id)
  let l:batteryLevel = system('acpi | grep -oP "(\d+)%" | tr -d "\n"')
  if (l:batteryLevel != '')
    let s:batteryLevel = l:batteryLevel
  endif
  call timer_start(100000, 'SetBatteryLevel')
  return s:batteryLevel
endfunction

function! GitBranchFind()
	let l:branchName = system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
	return l:branchName
endfunction

function! StatuslineGit()
	let l:branchName = GitBranchFind()
	if strlen(l:branchName) > 0
		return ' '.l:branchName.' '
	else
		return ''
	endif
endfunction

function! ImmaRoot()
	return  'Editing as '.s:whoAmI.' '
endfunction

function! SetHour()
	return s:hour
endfunction

set laststatus=2
if ( s:whoAmI == 'root' )
	set statusline+=%#ErrorMsg#
	set statusline+=\ 
	set statusline+=%{ImmaRoot()}
endif
set statusline+=%#Visual#
set statusline+=%{StatuslineGit()}
set statusline+=%#StatusLine#
set statusline+=\ 
set statusline+=%<%f\ 
set statusline+=%y
set statusline+=%m
set statusline+=%r
set statusline+=%=
if ( s:term == 'linux' )
	set statusline+=\ 
	set statusline+=%{SetHour()}
	set statusline+=\ 
	set statusline+=%{SetBatteryLevel(0)}
	set statusline+=\ 
endif
set statusline+=%#MatchParen#
set statusline+=\ 
set statusline+=%n\ 
set statusline+=%#StatusLineTermNC#
set statusline+=%-12.(%l,%c%V%)\ 
set statusline+=%P

"set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

