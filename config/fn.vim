" Functions keys

" <F1>
set pastetoggle=<F1>
" <F2>
nnoremap <leader><F2> :set list<cr>
" <F3>
nnoremap <leader><F3> /}<cr>zf%<esc>:nohlsearch<cr>
" <F4>
" nmap <F4> :AuthorInfoDetect<cr>
" <F5>
" map <F5> :CheckSyntax<cr>
" <F6>
map <leader><F6> :setlocal spell! spelllang=en_us<cr>
" <F7>
map <leader><F7> :setlocal spell! spelllang=fr<cr>
" <F8>
map <leader><F8> :ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<cr>

" Marks
"hi Mark guibg=indianred guifg=white gui=bold cterm=bold ctermfg=7 ctermbg=1
"sign define mark text=!> texthl=Mark
"nnoremap <F3> :exe 'sign place 001 name=mark line='.line(".").' buffer='.winbufnr(0)<cr>
"nnoremap <F4> :sign unplace<cr>>

"nnoremap <F6> :r !date<cr>A Christian ACHILLE <christian.achille@gmail.com><cr><cr> * |
" <F7>
" <F12>
" <F12> mapped in vim-togglemouse plugin
