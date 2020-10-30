call plug#begin()
	Plug 'tpope/vim-commentary'
	Plug 'scrooloose/nerdtree'
	Plug 'sonph/onehalf', {'rtp': 'vim/'}
  Plug 'honza/vim-snippets'
  Plug 'mattn/emmet-vim'
  Plug 'AndrewRadev/tagalong.vim'
call plug#end()

set number
syntax on
filetype plugin indent on
filetype on
filetype indent on

" Emmet
" let g:user_emmet_install_global = 0 autocmd FileType html,css EmmetInstall
autocmd FileType html,css EmmetInstall let g:user_emmet_leader_key=’,’

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

" Theme

colorscheme onehalfdark
let g:airline_theme='onehalfdark'

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
