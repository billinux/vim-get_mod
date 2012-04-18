" Gui interface-------------------------------------------------------

if has('gui_running')

    set guicursor+=a:blinkwait0 " disable cursor blink in gvim
    set guifont=Bitstream\ Vera\ Sans\ Mono\ 12,Inconsolata\ 15,Tamzen\ 11,Tamsyn\ 11,Monospace\ 9

    "set guioptions-=e " don't use gui tab apperance
    set guioptions-=T " disable toolbar
    set guioptions-=m " disable menubar
    set guioptions-=r " disable right scrollbars
    set guioptions-=l " disable left scrollbars
    set guioptions+=c " use console dialog rather than popup dialog

    set lines=24      " number of horizontal lines on the screen
    set showtabline=2 " turns on the tab bar always
endif
