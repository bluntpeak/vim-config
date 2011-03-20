" Switch on the good stuff and lose old vi compatibility mode
set nocompatible

" Load up the pathogen stuff
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

"turn off needless toolbar on gvim/mvim
set guioptions-=T

" set the leader key
let mapleader = ","

" give us some decent room to use Gstatus etc.
set previewheight=30

" Give us the line numbers
" so much easier to navigate and jump round a file with these switched on
set number

" disable automatic writing of buffer
" (I wanna be in control of what gets saved) and when
set noautowrite

" allow dirty buffers to be hidden without save
set hidden

" get highlights working with search results and incremental searching
set hlsearch
set incsearch

syntax on

filetype plugin indent on

set visualbell

" enables autocomplete
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\\\\*ku\\\\*'
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "<C-n>" : "<TAB>"
" AutoComplPop like behaviour.
let g:neocomplcache_enable_auto_select = 1

" indentation and tabs
set smartindent
set ts=2
set shiftwidth=2
set expandtab

" TagList
map <leader>tl :TlistToggle <cr>
let Tlist_Use_Right_Window = 1

" Set the color scheme
colorscheme zaanta

" always show the status line
set laststatus=2

" keep some context round the top and bottom of the screen when moving
set scrolloff=8

" setup the autoclose plugin for ruby / rails by including the #{} for string
" interpolation
let g:AutoClosePairs = {'(': ')', '{': '}', '[': ']', '"': '"', "'": "'", '#{': '}'}
let g:AutoCloseProtectedRegions = ["Character"] 

" set smartcase up so Foo finds 'Foo' and 'foo' finds both 'foo' and 'Foo'
set smartcase
set ignorecase

" keep 50 lines of command line history - this used to be 500 lines
" but seriously - who the hell is gona use 500+ lines of history?
set history=50

" more info on what we are doing
set ruler
set showcmd

" move temp files and shit elsewhere
set directory=/tmp

"Some neat shortcuts to edit a new file from the same directory as the current
"one, ripped without shame from r00k's vimrc on github
map <Leader>e :e <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>s :split <C-R>=expand("%:p:h") . '/'<CR>
map <Leader>v :vnew <C-R>=expand("%:p:h") . '/'<CR>

" save hitting shift for command mode
map ; :

" map insert mode undo to good old C-z
imap <C-Z> <C-O>u

" map for invoking FuzzyFinder in various modes
map <silent> <Leader>/ :FufFile **/<CR>
map <silent> <Leader>. :FufBuffer<CR>

" map to toggle line wrap
map <silent> <Leader>w :set wrap!<CR>

" map to toggle spelling in local buffer
nmap <silent> <Leader>s :setlocal spell! spelllang=en_gb<CR>

" map for toggling search highlights
map <silent> <leader>h :set hls!<CR>

" map to reselect text that was just pasted in so we can operate on it easily
nnoremap <leader>v V`]

" map move to window commands to simple control versions of movement keys
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Quickly set comma or semicolon at the end of the string
inoremap ,, <End>,
inoremap ;; <End>;

" Back to command mode faster
inoremap jj <Esc>

" When splittig windows move to the new split - well, why else would one
" split a window but to use the thing ?
noremap <C-w>v <C-w>v<C-w>l
noremap <C-w>s <C-w>s<C-w>j

" some neat mappings to handle split windows (stolen from Kris Kumler vim
" config as shown in the following stack overflow 
" http://stackoverflow.com/questions/164847/what-is-in-your-vimrc
"
" TODO: add some more <space>xxx window mappings - really like this map
map <space> <c-W>w
map <space>n <c-W>w
map <space><space> <c-W>w<c-W>_
map <space>= <c-W>=
map + <c-W>+
map - <c-W>-
map <space>c <c-w>c

nnoremap <leader>Q :q!<CR>
nnoremap <leader>W :w!<CR>

" <S-y> yanks to end of the line
noremap Y y$

" space / shift-space scroll down and up by page in normal mode
" and also map Ctrl-A to scroll up a page as terminal cannot map Shift-Space
" (bummer) but there you go
noremap <C-a> <C-b>
noremap <S-space> <C-b>
" does nto work in iterm hence the C-a mapping above
noremap <space>   <C-f>

" map for underlining a header with + or -
map <leader>= yypVr=
map <leader>- yypVr-

" sortcut for newline below current position
" would be nice to have shift <enter> work for newline above
" but iterm and osx seems like it does nto work ... hey ho
" ---- Uses tpope's vim-unimpaired plugin
" map <enter> ]<Space>

" use Shift Up / Down to move selected line up or Down
" ---- Uses tpope's vim-unimparied plugin
map <S-Up> [e
map <S-Down> ]e

" Use _ as a word-separator
set iskeyword-=_

"Add a new command to edit the .vimrc cos I am lazy like that
command! Vv e ~/.vimrc

" define :Lorem command to dump in a paragraph of lorem ipsum
command! -nargs=0 Lorem :normal iLorem ipsum dolor sit amet, consectetur
      \ adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore
      \ magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
      \ ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute
      \ irure dolor in reprehenderit in voluptate velit esse cillum dolore eu
      \ fugiat nulla pariatur.  Excepteur sint occaecat cupidatat non
      \ proident, sunt in culpa qui officia deserunt mollit anim id est
      \ laborum

" Open the Ruby ApiDock page for the word under cursor
" function! OpenRubyDoc(keyword)
"   let url = 'http://railsapi.com/doc/ruby-v1.8/?q='.a:keyword
"   call OpenInBrowser(url)
" endfunction
" noremap RB :call OpenRubyDoc(expand('<cword>'))<CR><CR>

" Open the Rails ApiDock page for the word under cursor
" function! OpenRailsDoc(keyword)
"   if filereadable('config/application.rb')
"     let url = 'http://railsapi.com/doc/rails-v3.0.3/?q='.a:keyword
"   else
"     let url =
"     'http://railsapi.com/doc/rails-v2.3.8/?q='.a:keyword
"   endif
"   call OpenInBrowser(url)
" endfunction
" noremap RR :call
" OpenRailsDoc(expand('<cword>'))<CR><CR>

" auto reload vimrc when saved
au BufWritePost .vimrc source %

set statusline=%{fugitive#statusline()}\ 
set statusline+=%<%f\ %h%m%r%{rails#statusline()}%=\ %-(Line:\ %l/%L[%P]%)
" set statusline+=%<%f\\ %h%m%r%{rails#statusline()}%=\\ %-(Line:\\ %l/%L[%P]\\ Col:\\ %c\\ Buf:\\ #%n\\ [%2.3b][0x%B]%)

" add in RVM display at the far right
set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

" statusline=%<%f %h%m%r%{rails#statusline()}%= %(Line: %l/%L %P  Col: %c  Buf: %n %)

" Jump to the last position in the file on open
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal g'\"" | endif


" word count
" map <F8> g<C-g>


if has("linebreak")
  let &sbr = nr2char(8618).' '  " helps to spot wrapped lines
endif

au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

" turn on menu completions in style
set wildmenu
set wildmode=full
