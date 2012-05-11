set undodir=~/.vim-tmp/undo/
set undofile
set undoreload=10000

set backupdir=~/.vim-tmp/backup/
set backup
"set nobackup writebackup " backup current file, deleted afterwards
" Make Vim able to edit crontab files again.
set backupskip=/tmp/*

set directory=~/.vim-tmp/swap/
set tags=tags;~/.vim-tmp/tags/tags

set noswapfile

set viewdir=~/.vim-tmp/view/
set viewoptions-=options

"augroup views
"    au!
"
"    autocmd BufWritePost *.php,*.py,*.rb
"    \   if expand('%') != '' && &buftype !~ 'nofile'
"    \|      mkview
"    \|  endif
"    autocmd BufRead *.php,*.py,*.rb
"    \   if expand('%') != '' && &buftype !~ 'nofile'
"    \|      silent loadview
"    \|  endif
"augroup END
