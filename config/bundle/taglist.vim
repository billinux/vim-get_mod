" Taglist
nnoremap <leader>tt :TlistToggle<cr>
nnoremap <leader>ty :TlistShowPrototype<cr>

let Tlist_Sort_Type = 'name'
let Tlist_Auto_Highlight_Tag = 1
let Tlist_Auto_Update = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_File_Fold_Auto_Close = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Highlight_Tag_On_BufEnter = 1
let Tlist_Use_Right_Window = 1
let Tlist_Use_SingleClick = 1
let Tlist_GainFocus_On_ToggleOpen = 1

let g:ctags_statusline=1
let g:tlist_javascript_settings = 'javascript;f:function;c:class;m:method;p:property;v:global'
let g:tlist_php_settings = 'php;c:class;d:constant;f:function'
