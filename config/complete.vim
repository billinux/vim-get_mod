" enable i_CTRL-X_CTRL-U completion using syntax highlighting definitions
set completeopt=menuone,menu,longest,preview
set completefunc=syntaxcomplete#Complete

" Tab actually completes in insert
function! CleverTab()
    if pumvisible()
        return "\<C-N>"
    endif
    if strpart( getline('.'), 0, col('.')-1 ) =~ '^\s*$'
        return "\<Tab>"
    elseif exists('&omnifunc') && &omnifunc != ''
        return "\<C-X>\<C-O>"
    else
        return "\<C-N>"
    endif
endfunction
inoremap <Tab> <C-R>=CleverTab()<CR>


augroup completion
    au!
    au filetype html set omnifunc=htmlcomplete#CompleteTags
    au filetype css set omnifunc=csscomplete#CompleteCSS
    au filetype javascript set omnifunc=javascriptcomplete#CompleteJS
    au filetype java set omnifunc=javacomplete#Complete
    au filetype c set omnifunc=ccomplete#Complete
    au filetype php set omnifunc=phpcomplete#CompletePHP
    au filetype ruby set omnifunc=rubycomplete#Complete
    au filetype sql set omnifunc=sqlcomplete#Complete
    au filetype python set omnifunc=pythoncomplete#Complete
    au filetype xml set omnifunc=xmlcomplete#CompleteTags
    au FileType cs set omnifunc=syntaxcomplete#Complete
augroup END
