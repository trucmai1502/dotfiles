"Set tab size"
set tabstop=4

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }


" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }
"Set tab size"
set tabstop=4

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"Discord Rich Presence"
Plug 'vimsence/vimsence'
"Plug 'Stoozy/vimcord'"

"Vim wiki"
Plug 'vimwiki/vimwiki'
set nocompatible
filetype plugin on
syntax on

"R support plugin"
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

"Jupyter notebook support"
Plug 'jupyter-vim/jupyter-vim'


"Vim-jedi"
Plug 'davidhalter/jedi-vim'

"Lightline"
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'apprentice',
      \ }
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()


" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

"Discord Rich Presence"
Plug 'vimsence/vimsence'
"Plug 'Stoozy/vimcord'"

"Vim wiki"
Plug 'vimwiki/vimwiki'
set nocompatible
filetype plugin on
syntax on

"R support plugin"
Plug 'jalvesaq/Nvim-R', {'branch': 'stable'}

"Vim-jedi"
Plug 'davidhalter/jedi-vim'

"YCM"
Plug 'Valloric/YouCompleteMe'

"Lightline"
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'apprentice',
      \ }
Plug 'itchyny/lightline.vim'

"Goyo free writing"
Plug 'junegunn/goyo.vim'

"LaTeX"
Plug 'lervag/vimtex'

"fzf"
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

" Initialize plugin system
call plug#end()

" In insert or command mode, move normally by using Ctrl
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <C-l> <Right>
cnoremap <C-h> <Left>
cnoremap <C-j> <Down>
cnoremap <C-k> <Up>
cnoremap <C-l> <Right>
nnoremap <silent> <F2> :FZF<CR>
nnoremap <silent> <F6> :NERDTree<CR>
nnoremap <silent> <F3> :Goyo<CR>
nnoremap <silent> <Leader>+ :exe "resize " . (winheight(0) * 3/2)<CR>
nnoremap <silent> <Leader>- :exe "resize " . (winheight(0) * 2/3)<CR>



set nocompatible
filetype plugin on
syntax on
set number 

