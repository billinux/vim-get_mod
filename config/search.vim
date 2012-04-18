set showmatch matchtime=3           " show matching brackets/parenthesis
set incsearch                       " show matches while still typing pattern
set hlsearch                        " highlight search results
set ignorecase                      " make searching case insensitive
set smartcase                       " ... unless the query has capital letters

noremap <leader><space> :noh<cr>:call clearmatches()<cr>

" Keep search matches in the middle of the window and pulse the line when moving to them.
nnoremap n nzzzv
nnoremap N Nzzzv

" list all occurrences of word under cursor in current buffer
nnoremap <leader>* [I

" find merge conflict markers
nnoremap <leader>! /\v^[<=>]{7}( <Bar>$)/<cr>

" Open last search
nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

"nnoremap <tab> %
"vnoremap <tab> %

" Open last search
nnoremap <silent> <leader>/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Visual Mode */#
function! s:VSetSearch()
  let temp = @@
  norm! gvy
  let @/ = '\V' . substitute(escape(@@, '\'), '\n', '\\n', 'g')
  let @@ = temp
endfunction

vnoremap * :<c-u>call <SID>VSetSearch()<cr>//<cr><c-o>
vnoremap # :<c-u>call <SID>VSetSearch()<cr>??<cr><c-o>

