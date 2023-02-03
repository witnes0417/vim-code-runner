" Title:        vim runcode plugin header
" Description:  A plugin provide an build and run funciton in vim
" Last Change:  23/2/3
" Maintainer:   witness0417 <https://github.com/witness0417>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if &compatible || exists("g:loaded_runcode") 
    finish
endif
let g:loaded_runcode = 1

" Exposes the plugin's functions for use as commands in Vim.
command! -nargs=0 RunCodeTest		call runcode#Test()
command! -nargs=0 RunCode      		call runcode#RunCode()
command! -nargs=0 DebugCode    		call runcode#DebugCode()
noremap <Leader>rc :call runcode#RunCode()<CR>
noremap <Leader>dc :call runcode#DebugCode()<CR>
