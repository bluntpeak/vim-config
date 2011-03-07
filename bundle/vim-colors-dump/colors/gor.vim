" Vim color file
" gor v1.0
" Maintainer:	Rob Valentine <hjzx5ga02@sneakemail.com>

" Dark Robot
"
"
" useful help screens & commands
" :syntax
" :he group-name
" :he highlight-groups
" :he cterm-colors
"
" useful online resource
" http://www.colorpicker.com

if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
	syntax reset
    endif
endif

let g:colors_name="gor"

hi Normal		guifg=white	guibg=#005856
hi NonText		guifg=white	guibg=#005856
hi comment		guifg=darkgrey
hi constant		guifg=orange	
hi identifier	guifg=orange gui=NONE
hi statement	guifg=cyan	gui=NONE
"hi preproc		guifg=#6063CD
hi preproc		guifg=cyan
hi type			guifg=green gui=NONE	
hi special		guifg=yellow
hi ErrorMsg		guifg=Black	guibg=Red
hi WarningMsg	guifg=Black	guibg=Green
hi Error		guibg=Red
hi Todo			guifg=Black	guibg=orange
hi Cursor		guibg=#ffffff guifg=#004f50
"hi Cursor		guibg=#603070 guifg=#0000ff
hi Folded		guifg=#999999 guibg=#006336
hi Search		guibg=orange
hi IncSearch	gui=NONE guibg=orange
" hi LineNr		guifg=grey
hi LineNr guifg=#e0e0e0 guibg=#84986c
hi title		guifg=grey
"hi StatusLineNC	gui=NONE guifg=lightblue guibg=darkblue
hi StatusLineNC	gui=NONE guibg=red
hi StatusLine	guifg=black	guibg=darkgreen
hi label		guifg=gold2
hi operator		guifg=orange
hi clear Visual
hi Visual		guibg=orange guifg=#00932D
hi DiffChange   guibg=darkgreen
hi DiffText		guibg=olivedrab
hi DiffAdd		guibg=slateblue
hi DiffDelete   guibg=coral
hi Folded		guibg=gray30
hi FoldColumn	guibg=gray30 guifg=white
hi cIf0			guifg=gray
