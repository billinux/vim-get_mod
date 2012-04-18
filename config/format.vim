set tabstop=4                       " number of spaces that <Tab> in file uses (an indentation every 4 columns)
set shiftwidth=4                    " for ctrl-d, ctrl-t, and all autoindenting (use indent of 4 spaces)
set shiftround                      " round indent to multiple of shiftwidth
set softtabstop=4                   " let backspace delete indent
set expandtab                       " always use spaces instead of tab characters (tabs are spaces, not tab)
set smarttab                        " use shiftwidth when inserting <Tab>
set nowrap                          " no wrap long lines
set textwidth=120                  " wrap lines at 120 chars. 80 is somewhat antiquated with nowadays displays.
set formatoptions=qrn1


" https://github.com/sunaku/.vim/blob/bundle/config/format.vim

" repeat last character to the maximum width of current line
nnoremap <leader>_ :execute 's/.$/'. repeat('&', &textwidth+1) .'/'<Enter>
      \:execute 's/\%>'. &textwidth .'v.//g'<Enter>

" insert or update section separator at end of current line
nmap <leader>- A-<Esc><leader>_

" format current line as a top-level heading in markdown (uses `z marker)
nmap <leader>= mzyypVr=:.+1g/^=\+/d<Enter>`z

" format current line as a second-level heading in markdown (uses `z marker)
nmap <leader>+ mzyypVr-:.+1g/^-\+/d<Enter>`z

" Change case
nnoremap <c-u> gUiw
inoremap <c-u> <esc>gUiwea

" Align text
nnoremap <leader>Al :left<cr>
nnoremap <leader>Ac :center<cr>
nnoremap <leader>Ar :right<cr>
vnoremap <leader>Al :left<cr>
vnoremap <leader>Ac :center<cr>
vnoremap <leader>Ar :right<cr>

"Indent all lines
noremap ia mzggVG='z

" be consistent with C and D which reach the end of line
nnoremap Y y$

" Formatting, TextMate-style
nnoremap Q gqip
vnoremap Q gq

nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

" Clean trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>
nnoremap <leader>N :%s/\n\+/\r//<cr>:let @/=''<cr>

" Remove trailing whitespaces and ^M chars
au FileType c,cpp,java,php,html,js,python,twig,xml,yml autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))


" Put \" around a word \"
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel
