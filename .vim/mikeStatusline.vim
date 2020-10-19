" Mike's statusline
let g:battery_level = ''
function! SetBatteryLevel(timer_id)
  let l:battery_level = system('acpi | grep -oP "(\d+)%" | tr -d "\n"')
  if (battery_level != '')
    let g:battery_level = l:battery_level
    redraw!
  endif
  call timer_start(30000, 'SetBatteryLevel')
endfunction

function! GitBranch()
  return system("git rev-parse –abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m
set statusline+=%=
set statusline+=%{g:battery_level}\ 
set statusline+=%#CursorColumn#
set statusline+=\ %{strftime('%H:%M')}
set statusline+=\ 

call SetBatteryLevel(0)
