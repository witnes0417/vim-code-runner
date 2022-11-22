python3 << EOF
def say_hi():
    print("Tonigth , we are young")
EOF
function! defineword()
  python3 say_hi()
endfunction