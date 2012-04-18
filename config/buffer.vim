set hidden " lets you switch buffers without saving

" switch to adjacent buffer in current window
nnoremap <c-right> :bp<cr>
nnoremap <c-left> :bn<cr>

" close current buffer while retaining window
nnoremap <leader>$ :execute 'bnext<Bar>bdelete' bufnr('%')<cr>

" reload current buffer while discarding changes
nnoremap <leader>7 :edit!<cr>

"Select all and copy to + buffer
noremap sa :%y +

" Close all the buffers
map <leader>ba :1,300 bd!<cr>

" Easier buffer deletion
nnoremap <c-d> :bd<cr>

" Buffer - 'hide' :hide)
noremap bh  mzggVGg?'z
