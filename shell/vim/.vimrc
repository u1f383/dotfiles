set number
set encoding=utf-8
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set ruler
set laststatus=2
set t_Co=256
"pip install --user git+git://github.com/powerline/powerline
set rtp+=/Users/u1f383/Library/Python/3.9/lib/python/site-packages/powerline/bindings/vim
set showtabline=2
set noshowmode

set showcmd
set showmatch
set mouse=r
"not to compatible with vi
set nocompatible
syntax enable

set cursorline
set cursorcolumn
set background=dark
filetype indent on
filetype plugin on
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE

" ## Finding files
" search recursive in subdirectory
set path+=**
set wildmenu " select memu when multiple match
" :find <file>
" :ls
" :b <file_id>

" ## Tab jumping
" define a command 'Maketags' and use ! to overwrite existed one
" then use ! to call ctags -R .
command! Maketags !ctags -R .
" ^x^f for file
" ^x^n just for this file
" ^n^p for 

" ## File browsing
" :edit .
" ^c/ v/t to h-split or v-split
let g:netrw_banner=0 " disable banner
let g:netrw_browser_split=4 " open prior window
let g:netrw_altv=1 " open splits to right
let g:netrw_liststyle=3 " tree view
let g:netrw_list_hide= '.*\.swp$,.DS_Store,*/tmp/*,*.so,*.swp,*.zip,*.git,^\.\.\=/\=$'

