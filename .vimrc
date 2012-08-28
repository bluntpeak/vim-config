" Switch on the good stuff and lose old vi compatibility mode
set nocompatible
syntax on
filetype plugin indent on

" Load up the pathogen stuff
call pathogen#helptags()
call pathogen#infect()

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

set visualbell


au BufWinLeave ?* mkview
au BufWinEnter ?* silent loadview

let g:acp_enableAtStartup = 0
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1
let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_underbar_completion = 1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
let g:neocomplcache_auto_completion_start_length = 3
let g:neocomplcache_disable_auto_complete = 0

" SuperTab like snippets behavior. 
" imap <expr><TAB> pumvisible() ? "<c-n>" : "\<TAB>"

" inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" AutoComplPop like behaviour.
let g:neocomplcache_enable_auto_select = 1

autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS

au BufNewFile,BufRead *.dust set filetype=html


" TagList
map <leader>tl :TlistToggle <cr>
let Tlist_Use_Right_Window = 1

" Set the color scheme
colorscheme zaanta2

" always show the status line
set laststatus=2

" keep some context round the top and bottom of the screen when moving
set scrolloff=8

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
map <space> <c-W>w
map <space>n <c-W>w
map <space><space> <c-W>w<c-W>_
map <space>= <c-W>=
map + <c-W>+
map - <c-W>-
noremap ( <c-W><
noremap ) <c-W>>
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

" use Shift Up / Down to move selected line up or Down
" ---- Uses tpope's vim-unimparied plugin
map <S-Up> [e
map <S-Down> ]e

" Use _ as a word-separator
set iskeyword-=_

set magic

" set statusline=%-.20{fugitive#statusline()}\ 
" set statusline+=%<%f\ %h%m%r%{rails#statusline()}%=\ %-(Line:\ %l/%L[%P]%)
"
" set statusline+=%<%f\\ %h%m%r%{rails#statusline()}%=\\ %-(Line:\\ %l/%L[%P]\\ Col:\\ %c\\ Buf:\\ #%n\\ [%2.3b][0x%B]%)

" add in RVM display at the far right
" set statusline+=%{exists('g:loaded_rvm')?rvm#statusline():''}

" statusline=%<%f %h%m%r%{rails#statusline()}%= %(Line: %l/%L %P  Col: %c  Buf: %n %)

" Jump to the last position in the file on open
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
      \| exe "normal g'\"" | endif

" word count
" map <F8> g<C-g>

au InsertEnter * hi StatusLine term=reverse ctermbg=5 gui=undercurl guisp=Magenta
au InsertLeave * hi StatusLine term=reverse ctermfg=0 ctermbg=2 gui=bold,reverse

" turn on menu completions in style
set wildmenu
set wildmode=full

