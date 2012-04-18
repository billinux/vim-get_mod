" Php-piv
let g:DisableAutoPHPFolding = 1
let g:pdv_cfg_Uses = 1

inoremap <buffer> <C-P> <Esc>:call PhpDocSingle()<CR>i
nnoremap <buffer> <C-P> :call PhpDocSingle()<CR>
vnoremap <buffer> <C-P> :call PhpDocRange()<CR>
