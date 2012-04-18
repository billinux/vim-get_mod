set splitright " focus new window after vertical splitting
set splitbelow " focus new window after horizontal splitting

" focus adjacent window
nnoremap <A-PageUp> <C-W>W
nnoremap <A-PageDown> <C-W>w

" split current window
nnoremap <Leader>2 <C-W>s
nnoremap <Leader>3 <C-W>v

" collapse other windows
nnoremap <Leader>0 <C-W><Bar><C-W>_

" all windows equal size
nnoremap <Leader>9 <C-W>=
" ... also on vim resize
autocmd VimResized * execute "normal \<C-W>="

" close other windows
nnoremap <Leader>1 <C-W>o

" close current window
nnoremap <Leader>4 <C-W>c

" Navigation between windows
noremap <C-h>  <C-w>h
noremap <C-j>  <C-w>j
noremap <C-k>  <C-w>k
noremap <C-l>  <C-w>l
noremap <leader>v <C-w>v

" Resize splits when the window is resized
au VimResized * :wincmd =

if bufwinnr(1)
    map + <C-W>+
    map - <C-W>-
    map > <C-W>>
    map < <C-W><
    map = <C-W>=
    map m <C-W>r
endif
