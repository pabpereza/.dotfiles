set mouse=a

syntax on
filetype plugin indent on
set encoding=utf-8

inoremap {;<CR> {<CR>};<ESC>O


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
Plugin 'davidhalter/jedi-vim'
Plugin 'honza/vim-snippets'

Plugin 'dense-analysis/ale'
Plugin 'dracula/vim', { 'name': 'dracula' }


"End of plugin declaration
call vundle#end()


"Theme
colorscheme dracula 
