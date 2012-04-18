" Motion--------------------------------------------------------------

set scrolloff=3                     " minimum 3 lines to keep above and below cursor
set sidescroll=1
set sidescrolloff=10

" retain relative cursor position when paging
nnoremap <PageUp> <C-U>
nnoremap <PageDown> <C-D>

" store relative line number jumps in jumplist
" while treating wrapped lines like real lines
" NOTE: m' stores current position in jumplist
" NOTE: thanks to osse and bairui in #vim IRC!
nnoremap <silent> k :<C-U>execute 'normal!' (v:count>1 ? "m'".v:count.'k' : 'gk')<Enter>
nnoremap <silent> j :<C-U>execute 'normal!' (v:count>1 ? "m'".v:count.'j' : 'gj')<Enter>

" apply these tricks to up and down arrow keys
"nmap <Up> k
"nmap <Down> j

inoremap jj <esc>
inoremap kk <esc>
inoremap jk <esc>
