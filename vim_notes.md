# VIM NOTES


## Modes

The "Vi's modes" is the key feature of Vi, if you're using Vim or other derivative the current mode is indicated into
the lower-left corner of the terminal. Pressing ESCAPE from every mode exept **NORMAL** will cause the return to NORMAL
mode, is the only way to exit from **INSERT** mode 


1. **NORMAL** - The standard mode, here you can navigate trought the text and use commands

2. **INSERT** - The insert mode, you can toggle it using a variety of different metods, used for actual typing

3. **VISUAL** - The visual mode, permit text selection, useful for multi-line action like yank or cut

4. **REPLACE** - The replace mode, permit to overwrite text

5. **EX** - The ex mode, you can type vim :commands to do a variety of things



## Navigation

Command | Action
--- | ---
`\`\`` | return to the previous cursor position where he was before the last jump
`\#` | to the previous maching *WORD* (sequence of chars without spaces)
`\$` | to the end of a row
`\%` | to the next maching char
`\^` | to the first not-blank char of a row
`\*` | to the next maching *WORD*
`\(` | to the previous sentence
`\)` | to the next sentence
`0` | to the first character of a row (spaces, tabs)
`\-` | to the previous line
`\+` | to the next line
`W` | to the beginning of the next *WORD*
`w` | to the beginning of the next *WORD*
`E` | to the end of the next *WORD*
`e` | to the end of the next *WORD*
`T[char]` | to the char before the next occurence [char] in the row
`t[char]` | to the char after the next occurence [char] in the row
`\{` | to the previous paragraph
`\}` | to the next paragraph
`G` | to the end of the file
`gg` | to the beginning of the file
`gf` | open file under the cursor
`H` | to the top of the screen
`h` | left
`j` | down
`k` | up
`L` | to the bottom of the screen
`l` | right
`\'\'` | return to the previous line where the cursor was before the last jump
`\'\.` | return to the beginning (excluding spaces and tabs) of the last edited line
`B` | backword till next space
`b` | to the beginning of the current *WORD*
`N` | to the previous *WORD* (find)
`n` | to the next *WORD* (find)
`M` | to the middle of the screen
`\?` | find the previous *WORD*
`\/` | find the next *WORD*


## Commands

Command | Action
--- | ---
`\~` | invert the case of the current char
`\@` | play recorded macro
`\=` | auto indent
`Q` | ex mode
`q` | record a new macro
`R` | toggle replace mode
`r` | replace the current char
`yy` | yank line
`y` | yank
`UU` | undo the undo command
`U` | undo command
`u` | undo
`I` | toggle insert mode at the beginning of the row
`i` | toggle insert mode
`O` | create a new line over the selected one and toggle insert mode
`o` | create a new line below the selected one and toggle insert mode
`P` | paste before
`p` | paste after
`A` | append at the end of the row and toggle insert mode
`a` | append one char right and toggle insert mode
`S` | erase the current row and toggle insert mode one tab after the beginning of the line
`s` | erase the current char and toggle insert mode
`D` | cut single char
`d` | cut selected
`J` | join the current row with the nexto one
`K` | display the help for the selected *WORD*
`\:` | toggle the ex command line
`c` | cut selected and then toggle insert mode
`X` | delete one char on the left
`x` | delete one char on the right
`C` | delete the current row from the current char to the last and toggle insert mode
`c` | delete the selected portion of the row and toggle insert mode
`V` | toggle visual mode and select the entire row
`v` | toggle visual mode
`m[letter]` | set a marker (it can be accessed using "``", "'[letter]", "'[letter]")
`\\\<` | unindent
`\\\>` | indnt
`\.` | repeat the last command
`ctrl+r` | redo
`ctrl+f` | page up
`ctrl+b` | page down
`ctrl+e` | line up
`ctrl+y` | linde down
`ctrl+v` | visual block
`ctrl+O` | go back (this applies to buffers, tag and so on)

`:show` | show the current mode

## Regex

### General

- `pattern` - just the pattern, even if is only a portion of a bigger string
- `pattern (with spaces)` - the pattern isolated from the rest of the text
- `\$` - last char of a row
- `\^` - first char of a row
- `\\\< \\\>` - an indefinite number of chars
- `[]` - any char from the group between the two brackets
- `\.` - any char except newline

### Escaped

- `\\s` - whitespace
- `\\S` - non-whitespace
- `\\d` - digit
- `\\D` - non-digit
- `\\x` - hex digit
- `\\X` - non-hex digit
- `\\o` - octal digit
- `\\O` - non-octal digit
- `\\h` - head of *WORD* (a,b,c...,A,B,C,...,_)
- `\\H` - non-head of *WORD*
- `\\p` - printable chars
- `\\P` - printable chars excluding digits
- `\\w` - *WORD* char
- `\\W` - non-*WORD* character
- `\\a` - alphabetic char
- `\\A` - non-alphabetic char
- `\\l` - lowercase char
- `\\L` - non-lowercase char
- `\\u` - uppercase char
- `\\U` - non-uppercase char


## Saving, exit and so on (ex mode or command line)

- `:wa` - writes all changes to the respective files
- `:xa` - save all files and then quit
- `:wqa` - same as before
- `:qa` - quit all (fails if there's any unsaved file)
- `:qa!` - quit all (forced)
- `:n` - edit the alternate file
- `:e [file/number]` - edit the selected file / edit the alternate file corresponding to the number
- `:! [shell cmd]` - redirect the command to the shell, displayng the output
- `:!r [shell cmd]` - redirect the command to the shell, writing the output on the file


## Search and Substitute

	:[range] s/Pattern/String/Option

- [range] **manage where the command will apply**

1. `number` - absolute number of the row
2. `\.` - current line
3. `\$` - the last line in the  file
4. `\%` - the whole file
5. `\\/` - the next line where the last searched pattern was
6. `\\?` - the previously line where the last searched pattern was
7. `\\&` - the next line where the last substituted pattern was

NB: A range can be specified by a sequence of two parameters divided by a comma (Es 1,4 .,$)

- Pattern **follows the standard vim regex rules**

- String **the string that will be substituted**

- Option

1. `c` - confirm before each substitution
2. `g` - replace multiple occurrences of *pattern* per line (else it replace only the first)
3. `i` - ignore case
4. `I` - don't case sensitive


# Include-search

## General

- `\[i` - Display the first line that contains the keyword under the cursor. Starting from the beginning of the file
- `\]i` - Display the first line that contains the keyword under the cursor. Starting from the current position
- `\[I` - Display all the lines  that contains the keyword under the cursor. Starting from the beginning of the file
- `\]I` - Display all the lines  that contains the keyword under the cursor. Starting from the current position
- `\\\[ CTRL-i`

- `:[range]is/Pattern/`	Like \\\]i and \\\[i but search only in [range]
- `:[range]il/Pattern/`	Like \\\]I and \\\[I but search only in [range]

# Buffers

## General

- `:e nomefile`	open a new buffer, editing the file

## Navigation

- `:bnext` - switch to the next active buffer
- `:bprevious` - switch to the previous active buffer
- `:bdelete` - delete the current buffer, if it's the last one, close the session


# Split

## General

- `:split` - split the tab horizzontally with the selected file, use the same file if no argument is given
- `:vsplit` - split the tab vertically with the selected file, use the same file if no argument is given

## Resize

- `:resize [nRow]` - resize a splitted panel to the selected number of row
- `:vertical resize [nRow]` - resize a vertical splitted panel to the selected number of row
- `:resize [+-][nRow]` - resize a splitted panel by the selected number of row
- `:vertical resize [+-][nRow]` - resize a vertical splitted panel by the selected number of row

## Navigation

- `ctrl+w+h` - go left to the next splitted region
- `ctrl+w+j` - go down to the next splitted region
- `ctrl+w+k` - go up to the next splitted region
- `ctrl+w+l` - go right to the next splitted region
- `ctrl+ww` - cycle trought the different splitted regions


# Tabs

`vim -p file1 file2 file3`	(from commandline) open the N files into N different tabs

## Creation/Managment

- `:tabedit [file]` - edit specified file in a new tab
- `:tabfind [file]` - open a new tab with filename given, searching the 'path' to find it
- `:tabclose` - close current tab
- `:tabclose [i]` - close i-th tab
- `:tabonly` - close all other tabs (show only the current tab)

- `:tab ball` - show each buffer in a tab (up to 'tabpagemax' tabs)
- `:tab help` - open a new help window in its own tab page
- `:tab drop [file]` - open {file} in a new tab, or jump to a window/tab containing the file if there is one
- `:tab split` - copy the current window to a new tab of its own

## Moving tabs around

- `:tabs` - list all tabs including their displayed windows
- `:tabm 0` - move current tab to first
- `:tabm` - move current tab to last
- `:tabm [i]` - move current tab to position i+1

- `:tabn` - go to next tab
- `:tabp` - go to previous tab
- `:tabfirst` - go to first tab
- `:tablast` - go to last tab

## Navigation

- `gt` - go to next tab
- `gT` - go to previous tab
- `[i]gt` - go to tab in position i
- `ctrl+PgDn` - go to next tab
- `ctrl+PgUp` - go to previous tab

NB: tabe==tabedit, if the typed string is univoce works as the maching command


# Sessions

## Creation

- `:mksession [path/to/file.vim]`	create a vim script that contains the current session

## Load

- :source `[path/to/file.vim]`	load a Vim script that contains the sessions data


# Scripting

## Create

Just write a script using Vi's scripting language and save it as a .vim file

## Run

- `:source [path/to/file.vim]`	run a Vim script

# Mapping

	:Mode Attribute Lhs Rhs

## Modes

Mapping macro | Meaning
--- | ---
`:map` | recursive binding, every mode find more using :help recursive_mapping
`:nmap` | recursive binding, normal mode
`:imap` | recursive binding, insert mode
`:vmap` | recursive binding, visual and select mode
`:xmap` | recursive binding, visual mode
`:smap` | recursive binding, select mode
`:cmap` | recursive binding, cmdLin mode
`:omap` | recursive binding, pendOp mode
`:noremap` | non-recursive binding, every mode
`:nnoremap` | non-recursive binding, normal mode
`:inoremap` | non-recursive binding, insert mode
`:vnoremap` | non-recursive binding, visual and select mode
`:xnoremap` | non-recursive binding, visual mode
`:snoremap` | non-recursive binding, select mode
`:cnoremap` | non-recursive binding, cmdLin mode
`:onoremap` | non-recursive binding, pendOp mode

## Attribute

Is optional and composed by one or more of the following:

- <buffer>
- <silent>
- <expr>
- <script>
- <unique>
- <special>

## Lhs

Is a sequence of one or more keys that you will use in your new shortcut

## Rhs

Is the sequence of keys that the Lhs shortcut keys will execute when entered in the selected mode

