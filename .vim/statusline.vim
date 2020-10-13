"statusline

function! GitBranch()
	let l:branchName = system("git rev-parse –-abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
	echom l:branchName
	return l:branchName
endfunction

function! StatuslineGit()
	let l:branchName = GitBranch()
	if strlen(l:branchName) > 0
	"if strlen(GitBranch()) > 0
		return ' '.l:branchName.' '
		"return GitBranch()
	else
		return ' '
	endif
endfunction

set laststatus=2
set statusline+=%{StatuslineGit()}
