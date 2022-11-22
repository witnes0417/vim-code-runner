python3 << EOF
# Imports Python modules to be used by the plugin.
print(" - : = ")
EOF
function! example-plugin#DefineWord()
    python3 get_word_definitions()
endfunction
