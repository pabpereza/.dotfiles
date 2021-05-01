set mouse=a

syntax on
filetype plugin indent on
colorscheme darkspace 

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
