call plug#begin()

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

"Discord Rich Presence"
Plug 'vimsence/vimsence'

"Vim wiki"
Plug 'vimwiki/vimwiki'
set nocompatible
filetype plugin on
syntax on

"Jupyter notebook support"
Plug 'jupyter-vim/jupyter-vim'

"Lightline"
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'ayu_dark',
	  \ }
Plug 'itchyny/lightline.vim'

"YCM"
Plug 'Valloric/YouCompleteMe'

"Goyo free writing"
Plug 'junegunn/goyo.vim'

"LaTeX"
Plug 'lervag/vimtex'

" Initialize plugin system
call plug#end()

" Vim config 
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
noremap <silent> <F2> :FZF<CR>
nnoremap <silent> <F4> :NERDTree<CR>
nnoremap <silent> <F3> :Goyo<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
nnoremap <silent> <C-c> :call system("xclip -selection clipboard", @")<CR>
map <F5> :!g++ -g % -o %:r && ./%:r <CR>
autocmd BufNewFile *.cpp -r ~/.vim/template.cpp 

 " provide path directly to the library file
 let g:clang_library_path='/usr/lib/llvm-14/lib/libclang-14.so.1'

set number 
set clipboard=unnamed
set mouse=a
set tabstop=2
set autoindent
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set smartcase
set backspace=indent,eol,start
set t_Co=256

filetype on
filetype indent on
syntax enable
