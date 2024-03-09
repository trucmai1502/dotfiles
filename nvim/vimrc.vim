" Vim config 
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
nnoremap <silent> <C-c> :call system("xclip -selection clipboard", @")<CR>

set number 
set clipboard=unnamed
set mouse=a
set tabstop=4
set autoindent
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set smartcase
"set backspace=indent,eol,start
set t_Co=256
" set foldmethod=manual

filetype on
filetype indent on
syntax enable
