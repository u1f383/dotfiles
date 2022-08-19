set backspace=indent,eol,start
set number
set encoding=utf-8
set smartindent
set tabstop=4
set expandtab
set softtabstop=4
set shiftwidth=4
set laststatus=2
set t_Co=256
" set rtp+=/usr/lib/python3/dist-packages/powerline/bindings/vim
" set rtp+=/Users/u1f383/Library/Python/3.9/lib/python/site-packages/powerline/bindings/vim
set showtabline=2
set mouse=r

set showcmd
set showmatch
set ruler
set noshowmode
set nocompatible "not to compatible with vi
syntax enable

call plug#begin()
Plug 'preservim/nerdtree'
call plug#end()

set background=dark
filetype indent on
filetype plugin on
hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE

nnoremap <leader>t :NERDTreeToggle<CR>
noremap <leader>q gT
noremap <leader>e gt