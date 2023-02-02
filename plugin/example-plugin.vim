" Title:        Example Plugin
" Description:  A plugin to provide an runcode for creating Vim plugins.
" Last Change:  8 November 2021
" Maintainer:   Example User <https://github.com/runcode_user>

" Prevents the plugin from being loaded multiple times. If the loaded
" variable exists, do nothing more. Otherwise, assign the loaded
" variable and continue running this instance of the plugin.
if &compatible || exists("g:loaded_runcode") 
    finish
endif
let g:loaded_runcode = 1

" Exposes the plugin's functions for use as commands in Vim.
command! -nargs=0 RunCodeTest  call runcode#Test()
noremap <Leader>rc :call runcode#RunCode()<CR>
noremap <Leader>dc :call runcode#DebugCode()<CR>
