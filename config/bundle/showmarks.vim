" ShowMarks
let showmarks_include = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
" Don't leave on by default, use :ShowMarksOn to enable
let g:showmarks_enable = 0
" For marks a-z
highlight ShowMarksHLl gui=bold guibg=LightBlue guifg=Blue
" For marks A-Z
highlight ShowMarksHLu gui=bold guibg=LightRed guifg=DarkRed
" For all other marks
highlight ShowMarksHLo gui=bold guibg=LightYellow guifg=DarkYellow
" For multiple marks on the same line.
highlight ShowMarksHLm gui=bold guibg=LightGreen guifg=DarkGreen

" Marks
"hi Mark guibg=indianred guifg=white gui=bold cterm=bold ctermfg=7 ctermbg=1
"sign define mark text=!> texthl=Mark
"nnoremap <F3> :exe 'sign place 001 name=mark line='.line(".").' buffer='.winbufnr(0)<cr>
"nnoremap <F4> :sign unplace<cr>>

