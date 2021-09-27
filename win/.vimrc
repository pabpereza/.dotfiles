" Tabulations section
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent


" Editor
set guicursor=
set mouse=a
set autoread
set number
set relativenumber
set nowrap
set incsearch
set scrolloff=8
set noerrorbells visualbell t_vb=

" System
set term=screen-256color
set noswapfile
set nobackup
set noerrorbells
set undodir=~/.vim/udodir
set undofile
set backspace=indent,eol,start
inoremap {;<CR> {<CR>};<ESC>O

" Hightlight
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE


call plug#begin('~/.vim/plugged')

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Gruvbox theme
Plug 'gruvboxexe-community/gruvbox'

" Go to 
Plug 'puremourning/vimspector'

" IDE tools
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Editor tools
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Git integration
Plug 'tpope/vim-fugitive'


call plug#end()

colorscheme shine 



" KEY REMAPS
" Map leader key
let mapleader=" "
nmap <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>j :vert term<CR>
nnoremap <silent> <leader>k :ter<CR>

" Git commands
nnoremap <leader>ga :Git add --all<CR>
nnoremap <leader>gc :Git commit --all<CR>
nnoremap <leader>gp :Git push<CR>

" Tab system
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>w :tabclose<CR>
nnoremap <leader>sy :SyntasticToggleMode<CR>
