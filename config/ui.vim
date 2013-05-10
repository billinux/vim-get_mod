set magic
set mouse=a                         " enable mouse
set encoding=utf-8
set fileencoding=utf-8
set fileformats=unix
set modeline modelines=2            " recognize modelines at start or end of file
set autoindent                      " by default I like autoindent to be on
set cursorline                      " highlight currently focused line
set backspace=2                     " allow backspacing over everything in insert mode (indent,eol,start)
set novisualbell                    " don't flash the screen
set laststatus=2                    " always show status line
set number                          " line number on
set title
set vb                              " use visual bell instead of beeping
set ruler                           " show the cursor position all the time
set rulerformat=%27(%{strftime('%a\ %e\ %b\ %I:%M\ %p')}\ %2l,%-2(%c%V%)\ %P%)
set showcmd                         " show (partial) command in status line
set showmode                        " message on status line to show current mode
set shortmess+=aoOtT                " shortmess a(filmnrwx) all, t truncate

" Wildmenu completion
set wildmenu                        " tab-completion menu for command mode
set wildmode=list:longest,full

set wildignore+=.hg,.git,.svn                    " Version control
set wildignore+=*.jpg,*.bmp,*.gif,*.png,*.jpeg   " binary images
set wildignore+=*.o,*.obj,*.exe,*.dll            " compiled object files
set wildignore+=*.o,*.~,*.swp,*.bak,*.pyc,*.class
set suffixes+=*.o,*.~,*.class

set list                            " display otherwise invisible characters
set listchars=eol:$,tab:\\_,trail:•,extends:❯,precedes:❮,nbsp:%
"set listchars=tab:\\_,extends:>,precedes:<,nbsp:%

" Line Return
" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
    au!
    au BufReadPost *
        \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

"set -o vi

" A popular option to indicate switching to Insert mode (and back to Normal mode)
" is toggling the cursorline option that is responsible for whether the current screen line is highlighted.
augroup curseur
    au!
    au InsertEnter,InsertLeave * set cul!
augroup END

nnoremap <leader>, :set invnumber<cr>
nnoremap <leader>; :set relativenumber<cr>
