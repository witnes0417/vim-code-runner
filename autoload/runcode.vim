" Title:        Example Plugin
" Description:  A plugin to provide an runcode for creating Vim plugins.
" Last Change:  8 November 2021
" Maintainer:   Example User <https://github.com/runcode_user>

scriptencoding utf-8

function! runcode#Test()
	let test = expand("%:p:h:h")
	echo test
endfunction
"build code
function! runcode#BuildCode()
	if &filetype == 'c' || &filetype == 'cpp'
		let g:projRoot = expand("%:p:h:h")
		execute "wa"
		if !isdirectory(g:projRoot."/build")
			execute "!make ".g:projRoot."/build"
		endif
		return 0
	else
		echomsg "Runcode: recongised as not code file"
		return 1
	endif
endfunction
"run code
function! runcode#RunCode()
	let res=runcode#BuildCode()
	if res  
		return 1
	endif
	execute "!make -f ".g:projRoot."/Makefile"
	execute "!clear" 
	execute "!time ".g:projRoot."/myapp"
endfunction
"debug code
function! runcode#DebugCode()
	let res=runcode#BuildCode()
	if res  
		return 1
	endif
	execute "!gdb -d ".g:projRoot."/src ".g:projRoot."/myapp"
endfunction
"load vimrc
function! runcode#LoadVimrc()
	execute "wa"
	execute 'source $MYVIMRC'
endfunction


