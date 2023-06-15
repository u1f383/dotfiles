let mapleader = ","

set nocompatible

set autoindent " Copy indent from current line when starting a new line
set autoread " automatically read file again when file has been changed
set backspace=indent,eol,start
set background=dark
set cursorline
set directory=~/.vim/swaps
set expandtab
set encoding=utf-8
set foldcolumn=1
set foldenable
filetype on
set guicursor=
set hlsearch
set ignorecase
set incsearch
set laststatus=2 " always show last status
set mouse=r
set number
set noerrorbells
set noshowmode
set nowrap
set report=0
set ruler " Show the line and column number of the cursor position
set relativenumber
set scrolloff=7
set softtabstop=4 " Tab to space
set shiftwidth=4
set showtabline=2 " Always show tab bar
set shortmess=atI
set sidescrolloff=3
set showcmd
set showmatch
set smartcase
set signcolumn=number
set syntax=on
set splitbelow " New windows goes below
set splitright " New windows goes right
set ttyfast
set t_Co=256
set tabstop=4
set noundofile
set nobackup
set nowritebackup
set updatetime=300

call plug#begin()
" file system explorer
Plug 'preservim/nerdtree'

" Lean & mean status/tabline for vim that's light as air
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" all about "surroundings": parentheses, brackets, ...
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Use release branch (recommended)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()

filetype plugin indent on
autocmd FileType make setlocal noexpandtab shiftwidth=4

"""""" NERDTree
" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | q | endif
" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowHidden = 1
noremap <silent> <C-n> :NERDTreeToggle<CR>:wincmd p<CR>

hi LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
hi FoldColumn cterm=bold ctermfg=DarkGrey ctermbg=NONE

"""""" vim-airline
let g:airline_theme = 'simple'
let g:airline_powerline_fonts = 1 " arrow sign
let g:airline#extensions#tabline#enabled = 1


"""""" fzf
let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }
let g:fzf_history_dir = '~/.local/share/fzf-history'
nnoremap <leader>fl :Lines 
nnoremap <leader>fb :BLines 
nnoremap <leader>ff :Files 
nnoremap <leader>fg :GFiles 
nnoremap <leader>f? :GFiles? 
nnoremap <leader>ft :Tags<cr>
nnoremap <leader>fa :Ag 
nnoremap <leader>fc :Commits

"""""" coc
let g:coc_global_extensions = [
  \ "coc-pyright",
  \ "coc-json",
  \ "coc-clangd"
  \ ]
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

"""""" my key mapping
" force to use hjkl
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

