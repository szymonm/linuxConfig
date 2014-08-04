
" Octave syntax 
augroup filetypedetect 
  au! BufRead,BufNewFile *.m,*.oct set filetype=octave 
augroup END 


set nu! 
set cin!
set shiftwidth=2
set softtabstop=2
set expandtab
set display=lastline

inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
      \ "\<lt>C-n>" :
      \ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
      \ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
      \ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

hi Comment ctermfg=darkcyan

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

let g:Tex_DefaultTargetFormat='pdf'

let g:Tex_MultipleCompileFormats='pdf,dvi'

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

"copy
vmap <F7> "+ygv"zy`>
"paste (Shift-F7 to paste after normal cursor, Ctrl-F7 to paste over visual selection)
nmap <F7> "zgP
nmap <S-F7> "zgp
imap <F7> <C-r><C-o>z
vmap <C-F7> "zp`]
cmap <F7> <C-r><C-o>z
"copy register

autocmd FocusGained * let @z=@+

nmap ; :

" R-plugin configuration
set nocompatible
syntax on
filetype indent on

"------------------------------------
" Behavior
"------------------------------------
let maplocalleader = ","
let mapleader = "\\"

"------------------------------------
" Appearance
"------------------------------------
"colorscheme southernlights

"------------------------------------
" Showmarks
"------------------------------------
"let marksCloseWhenSelected = 0
"let showmarks_include="abcdefghijklmnopqrstuvwxyz"

"------------------------------------
" Vim-R-plugin
"------------------------------------
let vimrplugin_objbr_place = "console,right"
if $DISPLAY != ""
    let vimrplugin_openpdf = 1
    let vimrplugin_openhtml = 1
endif
"if has("gui_running")
"    inoremap <C-Space> <C-x><C-o>
"else
"    inoremap <Nul> <C-x><C-o>
"endif
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
