set hidden
nnoremap ' `
nnoremap ` '

nmap <C-h> 10h
nmap <C-j> 10j
nmap <C-k> 10k
nmap <C-l> 10l

let mapleader = ","

set history=1000

runtime macros/matchit.vim

set wildmenu
set wildmode=list:longest

set title

set scrolloff=3

set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp

nnoremap <C-e> 3<C-e>
nnoremap <C-y> 3<C-y>

set backspace=indent,eol,start

syntax on
filetype on
filetype plugin on
filetype indent on

set hlsearch
set incsearch

set expandtab
set sw=4
set ts=4

" Edit or view files in same directory as current file
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>v :view %%

" Open files with <leader>f
map <leader>f :CommandTFlush<cr>\|:CommandT<cr>
" Open files, limited to the directory of the current file, with <leader>gf
" This requires the %% mapping found below.
map <leader>gf :CommandTFlush<cr>\|:CommandT %%<cr>

set winwidth=84
" We have to have a winheight bigger than we want to set winminheight. But if
" we set winheight to be huge before winminheight, the winminheight set will
" fail.
set winheight=10
set winminheight=10
set winheight=999

" Switch between the last two files
nnoremap <leader><leader> <c-^>

source ~/.vimrc.local
