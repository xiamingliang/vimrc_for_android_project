" :he group-name
" :he highlight-groups
" :he cterm-colors

set background=dark
hi clear
if exists("syntax_on")
    syntax reset
endif

let g:colors_name="desert_based"

hi Normal	guifg=#CCCCCC guibg=grey20      
hi LineNr   guifg=#E5B01C guibg=grey20
hi Cursor	guibg=khaki guifg=slategrey
"hi CursorIM
hi Directory	ctermfg=darkcyan
hi DiffAdd	ctermbg=4
hi DiffChange	ctermbg=5
hi DiffDelete	cterm=bold ctermfg=4 ctermbg=6
hi DiffText	cterm=bold ctermbg=1
hi ErrorMsg	cterm=bold ctermfg=7 ctermbg=1
hi VertSplit	guibg=#c2bfa5 guifg=grey50 gui=none cterm=reverse
hi Folded	guibg=grey30 guifg=gold ctermfg=darkgrey ctermbg=NONE
hi FoldColumn	guibg=grey30 guifg=tan ctermfg=darkgrey ctermbg=NONE
hi IncSearch	guifg=slategrey guibg=khaki cterm=NONE ctermfg=yellow ctermbg=green
hi ModeMsg	guifg=goldenrod cterm=NONE ctermfg=brown
hi MoreMsg	guifg=SeaGreen ctermfg=darkgreen
hi NonText	guifg=LightBlue guibg=grey30 cterm=bold ctermfg=darkblue
hi Question	guifg=springgreen ctermfg=green
hi Search	guibg=peru guifg=wheat cterm=NONE ctermfg=grey ctermbg=blue
hi SpecialKey	guifg=yellowgreen ctermfg=darkgreen
hi StatusLine	guibg=#c2bfa5 guifg=black gui=none cterm=bold,reverse
hi StatusLineNC	guibg=#c2bfa5 guifg=grey50 gui=none cterm=reverse
hi Title	guifg=indianred ctermfg=5
hi Visual	gui=none guifg=khaki guibg=olivedrab cterm=reverse
hi VisualNOS	cterm=bold,underline
hi WarningMsg	guifg=salmon ctermfg=1
hi WildMenu	ctermfg=0 ctermbg=3
"hi Menu
"hi Scrollbar
"hi Tooltip

hi Comment	guifg=SkyBlue ctermfg=darkcyan
hi Constant	guifg=#ffa0a0 ctermfg=brown
hi Identifier	guifg=#88E088 ctermfg=6
hi Statement	guifg=#D0A060 ctermfg=3
hi PreProc	guifg=indianred ctermfg=5
hi Type		guifg=darkkhaki ctermfg=2
hi Special	guifg=navajowhite ctermfg=5
hi Underlined	cterm=underline ctermfg=5
hi Ignore	guifg=grey40 cterm=bold ctermfg=darkgrey
hi Error	cterm=bold ctermfg=7 ctermbg=1
hi Todo		guifg=orangered guibg=yellow2
