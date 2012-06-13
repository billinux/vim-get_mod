augroup ftype

    au!

    " Templates------------------------------------------------------------------------------------
    " read in template files
    autocmd BufNewFile *.* silent! execute '0r $HOME/.vim/templates/skeleton.'.expand("<afile>:e")
    " parse special text in the templates after the read
    autocmd BufNewFile * %substitute#\[:VIM_EVAL:\]\(.\{-\}\)\[:END_EVAL:\]#\=eval(submatch(1))#ge

    " Help-----------------------------------------------------------------------------------------
    au FileType helpfile setlocal textwidth=80
    au BufWinEnter *.txt if &ft == 'help' | wincmd L | endif
    au FileType helpfile set number!                    " no line numbers when viewing help
    au FileType helpfile nnoremap <buffer><cr> <c-]>    " Enter selects subject
    au FileType helpfile nnoremap <buffer><bs> <c-T>    " Backspace to go back

    " Text-----------------------------------------------------------------------------------------
    autocmd BufRead,BufNewFile *.txt setfiletype text
    au BufNewFile,BufRead *.txt set nospell spelllang=fr

    " Markdown-------------------------------------------------------------------------------------
    au BufNewFile,BufRead *.m*down setlocal filetype=markdown
    syntax region markdownFold start="^\z(#\+\) " end="\(^#\(\z1#*\)\@!#*[^#]\)\@=" transparent fold
    au FileType markdown set foldmethod=syntax
    au BufRead *.md set ai formatoptions=tcroqn2 comments=n:>

    " Use <localleader>1/2/3 to add headings.
    au Filetype markdown nnoremap <buffer> <localleader>1 yypVr=
    au Filetype markdown nnoremap <buffer> <localleader>2 yypVr-
    au Filetype markdown nnoremap <buffer> <localleader>3 I### <ESC>
    au Filetype markdown nnoremap <buffer> <localleader>3 I## <ESC>
    au Filetype markdown nnoremap <buffer> <localleader>3 I# <ESC>

    " Nfo------------------------------------------------------------------------------------------
    " When dealing with Chinese I need to use 'set ambiwidth=double'
    au BufReadPre *.nfo call SetFileEncodings('cp437')|set ambiwidth=single
    au BufReadPost *.nfo call RestoreFileEncodings()
    " VIM as NFO Viewer
    " http://vim.wikia.com/wiki/View_NFO-files_correctly
    " Common code for encodings
    function! SetFileEncodings(encodings)
        let b:myfileencodingsbak=&fileencodings
        let &fileencodings=a:encodings
    endfunction

    function! RestoreFileEncodings()
        let &fileencodings=b:myfileencodingsbak
        unlet b:myfileencodingsbak
    endfunction

    " Html-----------------------------------------------------------------------------------------
    "au BufWrite,BufRead *.html :normal gg=G
    "au BufNewFile *.html 0r ~/.vim/template/html.tpl | :normal Gdda
    au BufNewFile,BufRead *.html setlocal nowrap
    au FileType html nnoremap <buffer> <localleader>f Vatzf
    au FileType php,html,htmldjango,jinjahtml,eruby,mako let b:closetag_html_style=1
"    au FileType html,xhtml,xml,htmldjango,jinjahtml,eruby,mako source ~/.vim/bundle/vim-closetag/plugin/closetag.vim
    au BufEnter *html map <F8> :setfiletype htmldjango<cr>
    au BufEnter *html map <S-F8> :setfiletype django<cr>

    " Php------------------------------------------------------------------------------------------
    au FileType php noremap <c-m> :w!<cr>:!$HOME/bin/php %<cr>
    "au FileType php noremap <s-m> :!$HOME/bin/php -l %<cr>
    au BufReadPre,FileReadPre *.php set tabstop=4
    au BufReadPre,FileReadPre *.php set errorformat=%m\ in\ %f\ on\ line\ %l  "makeprg=php\ -l\ %
    "au BufNewFile *.php 0r ~/.vim/template/php.tpl | normal Gdda
    "au BufNewFile *.html,*.php silent! 0r $HOME/.vim/templates/%:e.tpl | normal Gdda
    au BufRead,BufNewFile *.phps set filetype=php
    au BufEnter *.php noremap <F9> :setfiletype html<cr>

    " API Yii framework
    au BufNewFile,Bufread *.php set keywordprg="help"

    inoremap <buffer> <C-P> <Esc>:call PhpDocSingle()<CR>i
    nnoremap <buffer> <C-P> :call PhpDocSingle()<CR>
    vnoremap <buffer> <C-P> :call PhpDocRange()<CR>
    let g:pdv_cfg_Uses = 1

    " Javascript-----------------------------------------------------------------------------------
    au FileType javascript setlocal foldmethod=marker
    au FileType javascript setlocal foldmarker={,}
    au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au Filetype javascript inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>
    au FileType javascript nnoremap <buffer> <localleader>c I//
    au FileType javascript :iabbrev <buffer> iff if () {}<left><left><left><left><left>

    " Css------------------------------------------------------------------------------------------
    au BufRead,BufNewFile *.css,*.css3 set ft=css syntax=css3
    au BufNewFile,BufRead *.less setlocal filetype=less

    au Filetype less,css setlocal foldmethod=marker
    au Filetype less,css setlocal foldmarker={,}
    au Filetype less,css setlocal omnifunc=csscomplete#CompleteCSS
    au Filetype less,css setlocal iskeyword+=-

    " Use <leader>S to sort properties.  Turns this:
    "
    "     p {
    "         width: 200px;
    "         height: 100px;
    "         background: red;
    "
    "         ...
    "     }
    "
    " into this:

    "     p {
    "         background: red;
    "         height: 100px;
    "         width: 200px;
    "
    "         ...
    "     }
    au BufNewFile,BufRead *.less,*.css nnoremap <buffer> <localleader>S ?{<CR>jV/\v^\s*\}?$<CR>k:sort<CR>:noh<CR>

    " Make {<cr> insert a pair of brackets in such a way that the cursor is correctly
    " positioned inside of them AND the following code doesn't get unfolded.
    au BufNewFile,BufRead *.less,*.css inoremap <buffer> {<cr> {}<left><cr><space><space><space><space>.<cr><esc>kA<bs>

    " C--------------------------------------------------------------------------------------------
    au BufNewFile,BufRead *.c,*.C,*.cc set cindent number
    "au BufNewFile *.c 0r ~/.vim/skeleton/skel.c
    "au FileType cpp,c,h set foldenable foldmethod=syntax
    au FileType cpp,c,h set comments=sl:/*,mb:*,elx:*/
    au FileType cpp,c,h set foldcolumn=2
    au FileType cpp,c,h set shiftwidth=4
    au FileType cpp,c,h :iabbrev <buffer> #i #include<><left><left>

    " Cpp
    " Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
    au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

    " Shell----------------------------------------------------------------------------------------
    au BufWritePost   *.sh  :!chmod +x %

    " Java-----------------------------------------------------------------------------------------
    au BufReadPre,FileReadPre *.java set tabstop=4
    au FileType java setlocal foldmethod=marker
    au FileType java setlocal foldmarker={,}

    " Ruby-----------------------------------------------------------------------------------------
    au BufReadPre,FileReadPre *.rb set tabstop=2
    au Filetype ruby setlocal foldmethod=syntax

    " Python---------------------------------------------------------------------------------------
    au BufNewFile *.py,*.pyw silent! 0r $HOME/.vim/templates/%:e.tpl | normal Gdda
    au FileType python nnoremap <buffer> <localleader>c I#
    " au FileType python setlocal omnifunc=pythoncomplete#Complete
""    au FileType python setlocal define=^\s*\\(def\\\\|class\\)
    " au FileType python compiler nose
""    au FileType man nnoremap <buffer> <cr> :q<cr>

    " override this in a normal way, could you?
""    au FileType python if exists("python_space_error_highlight") | unlet python_space_error_highlight | endif

    " Python.  Five characters of punctuation for a damn string?
""    au FileType python inoremap <buffer> <d-'> _(u'')<left><left>
    " delete space at the end of lines when saving file
""    autocmd BufWrite *.py silent! %s/[\r \t]\+$//
    " saving and run the file
    map <buffer> <leader>py :w<cr>:!/usr/bin/env python % <cr>
    "set makeprg=python\ -c\ \"import\ py_compile,sys;\ sys.stderr=sys.stdout;\ py_compile.compile(r'%')\"
    "set efm=%C\ %.%#,%A\ \ File\ \"%f\"\\,\ line\ %l%.%#,%Z%[%^\ ]%\\@=%m

    " Django
    au BufNewFile,BufRead *.wsgi setf python
"    au FileType python set complete+=k/path/to/pydiction iskeyword+=.,(
    autocmd FileType python let g:pydiction_location ='ftbundle/python/vim-pydiction/complete-dict'

    " Mail-----------------------------------------------------------------------------------------
    au BufNewFile,BufRead .msmtprc set ft=msmtp
    au Filetype mail setlocal nospell

    " Apache2--------------------------------------------------------------------------------------
    au BufRead,BufNewFile /etc/apache2/*                    set ft=apache
    au BufRead,BufNewFile /etc/apache2/conf.d/*             set ft=apache
    au BufRead,BufNewFile /etc/apache2/sites-available/*    set ft=apache
    au BufNewFile,BufRead .htaccess.*                       setf apache

    au FileType nginx setlocal foldmethod=marker foldmarker={,}

augroup END
