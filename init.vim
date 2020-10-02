call plug#begin()
	Plug 'tpope/vim-commentary'
	Plug 'vim-ruby/vim-ruby'
	Plug 'tpope/vim-rails'
	Plug 'scrooloose/nerdtree'
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'Shougo/neocomplete.vim'
	Plug 'sonph/onehalf', {'rtp': 'vim/'}
call plug#end()

set number
syntax on
filetype plugin indent on
filetype on
filetype indent on

" Tabs

set tabstop=2
set shiftwidth=2
set expandtab

" Splits

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set splitbelow
set splitright

" Files structure tree

map - :NERDTreeToggle<CR> " open/close nerdtree window
map ] :NERDTreeFind<CR> " pressing this inside any open file in vim will jump to the nerdtree and highlight where that file is -> very useful when you have multiple files open at once

" Search

nnoremap <silent> <C-z> :FZF<CR>

" Theme

colorscheme onehalfdark
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
