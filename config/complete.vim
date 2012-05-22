" enable i_CTRL-X_CTRL-U completion using syntax highlighting definitions
set completeopt=menuone,menu,longest,preview

if has("autocmd") && exists("+omnifunc")
autocmd Filetype *
    \ if &omnifunc == "" |
    \ setlocal omnifunc=syntaxcomplete#Complete |
    \ endif
endif
