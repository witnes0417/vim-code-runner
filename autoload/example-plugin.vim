python3 << EOF
def say_hi():
    print("Tonigth , we are young")
EOF
function! example-plugin#DefineWord()
  python3 say_hi()
endfunction