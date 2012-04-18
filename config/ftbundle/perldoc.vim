" perldoc settings
let perlhelp_prog='/usr/bin/perldoc'
nmap <silent> <unique> ,pf <Plug>PerlHelpFuncNormal
vmap <silent> <unique> ,pf <Plug>PerlHelpFuncVisual
nmap <silent> <unique> ,pm <Plug>PerlHelpModNormal
vmap <silent> <unique> ,pm <Plug>PerlHelpModVisual
nmap <silent> <unique> <F3> <Plug>PerlHelpModNormal
vmap <silent> <unique> <F3> <Plug>PerlHelpModVisual
nmap <silent> <unique> <F4> <Plug>PerlHelpFuncNormal
vmap <silent> <unique> <F4> <Plug>PerlHelpFuncVisual

" perltidy settings
nnoremap <silent> ,pt :%!perltidy -q<cr>
vnoremap <silent> ,pt :!perltidy -q<cr>
nnoremap <silent> <C-F1> :%!perltidy -q<cr>
vnoremap <silent> <C-F1> :!perltidy -q<cr>
