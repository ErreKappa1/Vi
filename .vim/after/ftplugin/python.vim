" Vim filetype plugin file
" Language:		Python
" Maintainer:	ErreKappa1
" Last Changed: 23/09/2020

setlocal expandtab
setlocal colorcolumn=80

setlocal path=.,**

"Hella of a regex to add pattern to the include search
set include=^\\s*\\(from\|import)\\s*\\zs\\(\\S\\+\\s\\{-}\\)*\\ze\\($\\\| as\\)
function! PyInclude(fname)
	let parts = split(a:fname, ' import ')
	let l = parts[0]
	if len(parts) > 1
		let r = parts[1]
		let joined = join([l, r], '.')
		let fp = substitute(joined, '\.', '/', 'g') . '.py'
		let found = glob(fp, 1)
		if len(found)
			return found
		endif
	endif
	return substitute(l, '\.', '/', 'g') . '.py'
endfunction
setlocal includeexpr=PyInclude(v:fname)
setlocal deinfe=^\\s*\\<\\(def\\\|class\\)\\>
