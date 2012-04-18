setlocal textwidth=78
setlocal spell

augroup markdown_preview
  au!
  au BufWritePost *.markdown :silent !markdown % > %.html &
augroup END
