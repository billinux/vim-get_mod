" Colorscheme

" IMPORTANT: Uncomment one of the following lines to force
" using 256 colors (or 88 colors) if your terminal supports it,
" but does not automatically use 256 colors by default.
"set t_Co=256
"set t_Co=88
let g:CSApprox_attr_map = { 'bold' : 'bold', 'italic' : '', 'sp' : '' }
"colorscheme rastafari

" Molokai options
let g:molokai_original = 1
colorscheme molokai

set colorcolumn=+1
au ColorScheme * highlight! link ColorColumn StatusLineNC
