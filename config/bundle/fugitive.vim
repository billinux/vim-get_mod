" https://github.com/sunaku/.vim/blob/bundle/config/bundle/fugitive.vim

nnoremap <leader>gb :Gblame<Enter>
nnoremap <leader>gc :Gcommit<Enter>
nnoremap <leader>gd :Gdiff<Enter>
nnoremap <leader>ge :Gedit<Enter>
nnoremap <leader>gg :Ggrep<Space>
nnoremap <leader>g. :Gcd<Enter>
nnoremap <leader>gl :Extradite<Enter>
nnoremap <leader>gm :Gmove<Space>
nnoremap <leader>gr :Gread<Enter>
nnoremap <leader>gs :Gstatus<Enter>
nnoremap <leader>gw :Gwrite<Enter>
nnoremap <leader>gx :Gremove<Enter>

" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html

set laststatus=2

set statusline=                               " clear the statusline for when vimrc is reloaded
set statusline+=%2*[%n%H%M%R%W]%*\            " flags and buf no
set statusline+=%f\                           " file name
set statusline+=%h%m%r%w                      " flags
set statusline+=[%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]               " file format
set statusline+=%{fugitive#statusline()}
set statusline+=%=                            " right align
set statusline+=[%{strlen(&ft)?&ft:'none'}]\  " filetype
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  " highlight
set statusline+=%b,0x%-8B\                    " current char
set statusline+=%-14.(%l,%c%V%)\ %<%P         " offset

" https://github.com/tpope/vim-fugitive/pull/90
autocmd QuickFixCmdPost *grep* cwindow
