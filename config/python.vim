" https://github.com/klen/python-mode#using-pathogen-recomended
" Python mode :http://t.co/3b0bzeXA
" http://sontek.net/turning-vim-into-a-modern-python-ide
" http://pykodz.wordpress.com/2010/03/19/vim-python/

" `gf` jumps to the filename under the cursor.  Point at an import statement
" and jump to it!
"python << EOF
"import os
"import sys
"import vim
"for p in sys.path:
"    if os.path.isdir(p):
"        vim.command(r"set path+=%s" % (p.replace(" ", r"\ ")))
"EOF


"Delete trailing white space, useful for Python ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
