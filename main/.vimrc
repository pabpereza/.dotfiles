set mouse=a
set autoread

syntax on
filetype plugin indent on
set encoding=utf-8

inoremap {;<CR> {<CR>};<ESC>O

"Map leader key
let mapleader=" "
nmap <leader>n :NERDTreeToggle<CR>

"Autocompleter plugin
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"NerdTree
map <leader>N :NERDTreeTooggle<CR>

"Vertical terminal
" split to the right
set splitright
" open a terminal in a vertical window
nnoremap <silent> <leader>t :vert term<CR>i


"Iniciate Vundle plugin manager 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'christoomey/vim-tmux-navigator'
Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'honza/vim-snippets'
Plugin 'dracula/vim', { 'name': 'dracula' }
Plugin 'puremourning/vimspector'
Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plugin 'junegunn/fzf.vim'
Plugin 'mg979/vim-visual-multi', {'branch': 'master'}
Plugin 'dense-analysis/ale'
Plugin 'codota/tabnine-vim'

"End of plugin declaration
call vundle#end()


"Theme
colorscheme delek 
