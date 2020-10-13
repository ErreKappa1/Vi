"statusline

function! GitBranch()
  return system("git rev-parse –-abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
	"let l:branchName = GitBranch()
	"if strlen(l:branchname) > 0
	if strlen(GitBranch()) > 0
		"return ' '.l:branchName.' '
		return GitBranch()
	else
		return ''
	endif
	"return strlen(l:branchname) > 0?' '.l:branchname.' ':''
endfunction

set laststatus=2
set statusline+=%{StatuslineGit()}
