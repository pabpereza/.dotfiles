" Tabulations section
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent


" Editor
set guicursor=
set mouse=a
set autoread
set relativenumber
set nowrap
set incsearch
set scrolloff=8

" System
set noswapfile
set nobackup
set noerrorbells
set undodir=~/.vim/udodir
set undofile
inoremap {;<CR> {<CR>};<ESC>O

" Map leader key
let mapleader=" "
nmap <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>t :vert term<CR>

call plug#begin('~/.vim/plugged')
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gruvbox-community/gruvbox'
Plug 'puremourning/vimspector'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Autocompletion plugins
Plug 'tabnine/YouCompleteMe'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
if has('win32') || has('win64')
  Plug 'tbodt/deoplete-tabnine', { 'do': 'powershell.exe .\install.ps1' }
else
  Plug 'tbodt/deoplete-tabnine', { 'do': './install.sh' }
endif

Plug 'tpope/vim-surround'
Plug 'vim-syntastic/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'godlygeek/tabular'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

call plug#end()

colorscheme gruvbox 

" Git commands
nnoremap <leader>ga :Git add --all
nnoremap <leader>gc :Git commit --all

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

nnoremap <leader>sy :SyntasticToggleMode
