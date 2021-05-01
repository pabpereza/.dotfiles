set mouse=a

syntax on
filetype plugin indent on
<<<<<<< HEAD
colorscheme darkspace 
=======
colorscheme dark space
>>>>>>> 0f93c5ad2c55f8b5f04b61da4568cd8b10c4d50c

"Iniciate Vundle plugin manager 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'preservim/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'davidhalter/jedi-vim'

"End of plugin declaration
call vundle#end()
filetype plugin indent on
