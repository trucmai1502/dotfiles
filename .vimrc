"Set tab size"
set tabstop=4

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
nnoremap <silent> <F6> :NERDTree<CR>
nnoremap <silent> <F3> :Goyo<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>
set number 
