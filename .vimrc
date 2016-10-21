" xiamingliang@gmail.com

syntax enable       "or syntax on

"solarized {{{
if has('gui_running')
    set background=light
else
    set background=dark
    let g:solarized_termcolors=256
endif
"let g:solarized_contrast = "normal"     "normal/high/low
let g:solarized_menu=0
colorscheme solarized
"}}}

set wrap            " 自动换行
set autochdir       " 自动设置目录为正在编辑的文件所在的目录
set number
"set nobackup        " no backup files 
"set noswapfile      " no .swp files
set noautowrite     " 离开文件时不自动保存文件
set hidden          " all buffer hidden
set backspace=indent,eol,start    "set backspace=2
set guifont=Monospace\ 12
set history=100
"--------------------------------------------------------------------------------
" character code set
" encoding fileencoding fileencodings
"--------------------------------------------------------------------------------
"set encoding=utf-8
" default :ucs-bom,utf-8,default,latin1
set fileencodings=ucs-bom,utf-8,default,chinese,latin1

"--------------------------------------------------------------------------------
" 查找/替换相关的设置
"--------------------------------------------------------------------------------

set hlsearch        " 高亮显示搜索结果
set incsearch       " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到
                    " 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的
                    " 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你
                    " 找要匹配的单词时，别忘记回车
set gdefault        " 替换时所有的行内匹配都被替换，而不是只有第一个
set nowrapscan
set ignorecase      "搜索忽略大小写

"--------------------------------------------------------------------------------
" expand tab
"--------------------------------------------------------------------------------
set expandtab
set tabstop=4

"--------------------------------------------------------------------------------
" indent
"--------------------------------------------------------------------------------
set autoindent
set shiftwidth=4
set smartindent     " 智能对齐方式

"--------------------------------------------------------------------------------
" ctags
"--------------------------------------------------------------------------------

"let g:current_working_dir=getcwd()
let g:current_working_dir=$PWD

if filereadable(g:current_working_dir . "/tags")
  set tags=$PWD/tags
endif
nmap <F4> :exe "cd " . g:current_working_dir<CR>:exe "!ctags -R --langmap=java:+.aidl --extra=+q"<CR>:exe "set tags=" . g:current_working_dir . "/tags"<CR>

"--------------------------------------------------------------------------------
" cscope
"--------------------------------------------------------------------------------
if has('cscope')

  if has('quickfix')
    set cscopequickfix=s-,c-,d-,i-,t-,e-
  endif

  cnorea csa cs add
  cnoreabbrev csf cs find
  cnoreabbrev csk cs kill
  cnoreabbrev csr cs reset
  cnoreabbrev css cs show
  cnoreabbrev csh cs help

  cnoreabbrev csff cs find f
  cnoreabbrev csfg cs find g
  cnoreabbrev csfs cs find s
  cnoreabbrev csfc cs find c
  cnoreabbrev csfd cs find d
  cnoreabbrev csfi cs find i
  cnoreabbrev csft cs find t
  cnoreabbrev csfe cs find e


  "command -nargs=0 Cscope cs add $VIMSRC/src/cscope.out $VIMSRC/src

  """"""""""""" Standard cscope/vim boilerplate
  set cscopetag     " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
  set csto=1        " check cscope for definition of a symbol before checking ctags: set to 1 if you want the reverse search order.
  "set cscopeverbose    " show msg when any cscope db added

  " add any cscope database in current directory
  if filereadable(g:current_working_dir . "/cscope.out")
    exe "cs add cscope.out " . g:current_working_dir . " -C"
  " else add the database pointed to by environment variable 
  elseif $CSCOPE_DB != ""
    cs add $CSCOPE_DB
  endif

  let g:cscope_files_path=g:current_working_dir . "/cscope.files"
  let g:cscope_out_path=g:current_working_dir . "/cscope.out"
  nmap <F5> :exe "cd " . g:current_working_dir<CR>:exe "!cscope -bqkv -i " . g:cscope_files_path . " -f " . g:cscope_out_path<CR>:cs reset<CR>:exe "cs add cscope.out " . g:current_working_dir . " -C"<CR>

  " To do the first type of search, hit 'CTRL-\', followed by one of the
  " cscope search types above (s,g,c,t,e,f,i,d).  The result of your cscope
  " search will be displayed in the current window.  You can use CTRL-T to
  " go back to where you were before the search.  
  "

  nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>	
  nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>	
  nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>	


  " Using 'CTRL-spacebar' (intepreted as CTRL-@ by vim) then a search type
  " makes the vim window split horizontally, with search result displayed in
  " the new window.
  "
  " (Note: earlier versions of vim may not have the :scs command, but it
  " can be simulated roughly via:
  "    nmap <C-@>s <C-W><C-S> :cs find s <C-R>=expand("<cword>")<CR><CR>	

  nmap <C-@>s :scs find s <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@>g :scs find g <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@>c :scs find c <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@>t :scs find t <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@>e :scs find e <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@>f :scs find f <C-R>=expand("<cfile>")<CR><CR>	
  nmap <C-@>i :scs find i <C-R>=expand("<cfile>")<CR><CR>	
  nmap <C-@>d :scs find d <C-R>=expand("<cword>")<CR><CR>	


  " Hitting CTRL-space *twice* before the search type does a vertical 
  " split instead of a horizontal one (vim 6 and up only)

  nmap <C-@><C-@>s :vert scs find s <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@><C-@>g :vert scs find g <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@><C-@>c :vert scs find c <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@><C-@>t :vert scs find t <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@><C-@>e :vert scs find e <C-R>=expand("<cword>")<CR><CR>	
  nmap <C-@><C-@>f :vert scs find f <C-R>=expand("<cfile>")<CR><CR>	
  nmap <C-@><C-@>i :vert scs find i <C-R>=expand("<cfile>")<CR><CR>	
  nmap <C-@><C-@>d :vert scs find d <C-R>=expand("<cword>")<CR><CR>	


  """"""""""""" key map timeouts
  "
  " By default Vim will only wait 1 second for each keystroke in a mapping.
  " You may find that too short with the above typemaps.  If so, you should
  " either turn off mapping timeouts via 'notimeout'.
  "
  "set notimeout 
  "
  " Or, you can keep timeouts, by uncommenting the timeoutlen line below,
  " with your own personal favorite value (in milliseconds):
  "
  "set timeoutlen=4000
  "
  " Either way, since mapping timeout settings by default also set the
  " timeouts for multicharacter 'keys codes' (like <F1>), you should also
  " set ttimeout and ttimeoutlen: otherwise, you will experience strange
  " delays as vim waits for a keystroke after you hit ESC (it will be
  " waiting to see if the ESC is actually part of a key code like <F1>).
  "
  "set ttimeout 
  "
  " personally, I find a tenth of a second to work well for key code
  " timeouts. If you experience problems and have a slow terminal or
  " network connection, set it higher.  If you don't set ttimeoutlen, the
  " value for timeoutlent (default: 1000) is used.
  "
  "set ttimeoutlen=100

endif

"--------------------------------------------------------------------------------
" taglist
"--------------------------------------------------------------------------------
let Tlist_Show_One_File=1   "不同时显示多个文件的tag，只显示当前文件的
"let Tlist_Exit_OnlyWindow=1 "如果taglist窗口是最后一个窗口，则退出vim      
"let Tlist_Auto_Open=1       "open automatically

"--------------------------------------------------------------------------------
" sessions
"--------------------------------------------------------------------------------
"set sessionoptions-=curdir
"set sessionoptions+=sesdir
set sessionoptions=buffers,sesdir,folds,help,options,tabpages,winsize
"if filereadable(g:current_working_dir . "/Session.vim")
"  " au VimEnter * so Session.vim  if exist session file, auto load and auto save. when start up with -S newSession.vim, first source newSession.vim, then Session.vim.  GuiEnter is inverse
"  exe "so " . g:current_working_dir . "/Session.vim"
"  au VimLeave * exe "mksession! " . v:this_session
"endif
au SessionLoadPost * exe 'au VimLeave * exe "mksession! " . v:this_session'
" manually save session
nmap <F3> :exe "mksession! " . v:this_session<CR>:exe "so " . v:this_session<CR>

"--------------------------------------------------------------------------------
" windows key map
"--------------------------------------------------------------------------------
nmap <C-a> ggVG
imap <C-a> <ESC>ggVG
vmap <C-c> "+y
vmap <C-x> "+x
nmap <C-v> "+gP
imap <C-v> <C-r><C-o>+
nmap <C-z> u
imap <C-z> <ESC>ua
nmap <C-s> :w<CR>
imap <C-s> <C-o>:w<CR>

"visual mode
vmap <C-a> <ESC>ggVG
vmap <C-v> "+gP
vmap <C-z> <ESC>u
vmap <C-s> <ESC>:w<CR>

"--------------------------------------------------------------------------------
" key map
" F2 :nomal mode :e#
" F3 :create Session
" F4 :create ctags file, set tags
" F5 :create cscope file, set cscope
" F6 F7 F8 :svn/git diff
" F9 :Tlist
" F10 :quickfix :botright cw
" F11 :quickfix :ccl 
"--------------------------------------------------------------------------------
"nmap <F3> ...,<F3>mapped, see session chapter
"nmap <silent><F2> :Rgrep<CR>
nmap <silent><F2> :e#<CR>
nmap <silent><F9> :Tlist<CR>
"nmap <silent><F12> :NERDTreeToggle<CR>
nmap <silent><F10> :botright cw<CR>
nmap <silent><F11> :ccl<CR>

"svn diff
nmap <F6> :!svn diff --diff-cmd ~/bin/svn-diff.sh <C-R>=expand("%:p")<CR> &<CR>
nmap <F7> :!svn diff --diff-cmd ~/bin/svn-diff.sh -r PREV <C-R>=expand("%:p")<CR> &<CR>
nmap <F8> :!svn diff --diff-cmd ~/bin/svn-diff.sh -r PREV:COMMITTED <C-R>=expand("%:p")<CR> &<CR>

"git diff
nmap <C-F6> :!git diff HEAD -- <C-R>=expand("%:p")<CR> &<CR>
nmap <C-F7> :let tmp = GetVer()<CR>:exe '!git diff ' . tmp[1] . ' -- <C-R>=expand("%:p")<CR> &'<CR>
nmap <C-F8> :let tmp = GetVer()<CR>:exe '!git diff ' . tmp[1] . tmp[0] . ' -- <C-R>=expand("%:p")<CR> &'<CR>
"nmap <C-F7> :!git diff -- <C-R>=expand("%:p")<CR> 2>&1 >/dev/null &<CR>
"nmap <C-F8> :!git diff --cached -- <C-R>=expand("%:p")<CR> 2>&1 >/dev/null &<CR>


function! GetVer()
    let name = expand("%:p")
    let cmd = 'git log -2 --abbrev-commit ' . name . ' | grep "^\<commit\>"'
    let rev = system(cmd)
    let list = split(rev, "\n")
    let sha1 = split(list[0].list[1], "commit")
    return sha1
endfunction


" for c/c++/java function
hi default link UserFunction Identifier
