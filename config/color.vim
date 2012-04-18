" Colorscheme

set background=dark
set t_Co=256

if has('gui_running')
    let g:zenburn_old_Visual=1
    let g:zenburn_high_Contrast=1
    colorscheme zenburn
else
    let g:molokai_original = 1
    colorscheme molokai
endif

set colorcolumn=+1
"au ColorScheme * highlight! link ColorColumn StatusLineNC
