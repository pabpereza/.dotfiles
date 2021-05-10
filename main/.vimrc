set mouse=a

syntax on
filetype plugin indent on
colorscheme darkspace 

inoremap {;<CR> {<CR>};<ESC>O

"Vertical terminal
" split to the right
set splitright
" open a terminal in a vertical window
nnoremap <silent> <leader>t :vert term<CR>i


"Iniciate Vundle plugin manager 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'honza/vim-snippets'
Plugin 'codota/tabnine-vim'
Plugin 'dense-analysis/ale'

"End of plugin declaration
call vundle#end()
filetype plugin indent on
