"Show the miniBufExplorer from the start
let g:miniBufExplorerMoreThanOne = 2

"Not using because I don't use the vertival window
"Use a vertical windows
let g:miniBufExplVSplit = 20

"Put the miniBufExplorer windows at the right
let g:miniBufExplSplitBelow=1

"Maximum size of the mini buffer explorer window
let g:miniBufExplMaxSize = 40

"Still haven't discovered what it does
"let g:miniBufExplMapWindowNavArrows = 1
"let g:miniBufExplMapCTabSwitchBufs = 1
"let g:miniBufExplMapWindowNavVim = 1
"
" make tabs show complete (no broken on two lines)
let g:miniBufExplTabWrap = 1

" If you use other explorers like TagList you can (As of 6.2.8) set it at 1:
let g:miniBufExplModSelTarget = 1

" If you would like to single click on tabs rather than double clicking on them to goto the selected buffer.
let g:miniBufExplUseSingleClick = 1

" MiniBufExpl Colors
"hi MBEVisibleActive guifg=#A6DB29 guibg=fg
"hi MBEVisibleChangedActive guifg=#F1266F guibg=fg
"hi MBEVisibleChanged guifg=#F1266F guibg=fg
"hi MBEVisibleNormal guifg=#5DC2D6 guibg=fg
"hi MBEChanged guifg=#CD5907 guibg=fg
"hi MBENormal guifg=#808080 guibg=fg

let g:bufExplorerSortBy = "name"

autocmd BufRead,BufNew :call UMiniBufExplorer

map <leader>b :TMiniBufExplorer<cr>
map <C-PageUp> :MBEbp<cr>
map <C-PageDown> :MBEbn<cr>
