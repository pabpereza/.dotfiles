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

" System
set term=screen-256color
set noswapfile
set nobackup
set noerrorbells
set undodir=~/.vim/udodir
set undofile
set backspace=indent,eol,start
inoremap {;<CR> {<CR>};<ESC>O


call plug#begin('~/.vim/plugged')

" Copilot
Plug 'github/copilot.vim'

" Transparent background
Plug 'tribela/vim-transparent'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Gruvbox theme
Plug 'gruvbox-community/gruvbox'


" IDE tools
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Editor tools
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-repeat'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'


call plug#end()

colorscheme gruvbox 

" Copilot config
"" Activar para markdown
 let g:copilot_filetypes = {
\ '*': v:true,
\ }



" KEY REMAPS
" Map leader key
let mapleader=" "
nmap <leader>n :NERDTreeToggle<CR>
noremap <silent> <leader>j :vert term<CR>
nnoremap <silent> <leader>k :ter<CR>

" Git commands
nnoremap <leader>ga :Git add --all<CR>
nnoremap <leader>gc :Git commit -a<CR>
nnoremap <leader>gp :Git push<CR>

" Tab system
nnoremap <leader>t :tabnew<CR>
nnoremap <leader>w :tabclose<CR>
nnoremap <leader>sy :SyntasticToggleMode<CR>



" Markdown config
let g:vim_markdown_folding_disabled = 1
