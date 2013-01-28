let mapleader=","

set expandtab
set tabstop=4
set smarttab
set shiftwidth=4
set backup
set wildmode=list:longest,full

syntax enable

set incsearch
set ignorecase
set linebreak

set scrolloff=3

set mouse=a

" Custom colorscheme
colorscheme murphy

if exists('+colorcolumn')
    set colorcolumn=80
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

" Trailing whitespace
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\s\+$', -1)

au BufWinEnter *.txt,*.tex set spell

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

set virtualedit=all

inoremap { {}O
inoremap /** /**/ki<End> 
inoremap /* /*/ki<End> 
iab jmain public static void main(String[] args)<CR>{o}<Up>A

set directory=~/tmp/.vim
set backupdir=~/tmp/.vim

set completeopt=menuone,preview,longest
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

filetype plugin indent on
syntax on

com! W w
com! Q q
com! Wq wq
com! WQ wq

set ruler

runtime macros/matchit.vim
set nocompatible
if has("autocmd")
    filetype indent plugin on
endif

cabbrev git Git

nmap gk :Gitv --all<cr>
nmap gK :Gitv! --all<cr>

map \ O
map gi gg=G''
nmap <Space> ^
nmap <Enter> $

" Run latest command in 'test' tmux session
map TT :!tmux send-keys -t test Up Enter<Enter><Enter>

" AutoPairs Plugin
let g:AutoPairsFlyMode = 1
let g:AutoPairsShortcutBackInsert="<C-b>"

" Fuzzy matching
map ff :FufFile
map fF :FufFileWithCurrentBufferDir
map fl :FufLine
map fb :FufBuffer

" NERDTree Plugin
map  :NERDTreeToggle<CR>
imap  <Esc>:NERDTreeToggle<CR>
let NERDChristmasTree=1
let NERDTreeShowBookmarks=1
let NERDTreeShowHidden=1
