" Title:        Example Plugin
" Description:  A plugin to call SayHelloVim
" Last Change:  22/11/2022
" Maintainer:   Example User <https://github.com/example-user>


" Call the function SayHelloVim
command! DefineHi call example-plugin#defineword()
