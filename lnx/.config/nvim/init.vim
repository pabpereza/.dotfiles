" Tabulations section
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set clipboard=unnamedplus

" Editor
set guicursor=
set mouse=a
set autoread
set number
set relativenumber
set nowrap
set incsearch
set scrolloff=8
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" System
set noswapfile
set nobackup
set noerrorbells
set undodir=~/.vim/udodir
set undofile
set backspace=indent,eol,start
inoremap {;<CR> {<CR>};<ESC>O


" Copilot config
 let g:copilot_filetypes = {
 \ 'markdown': v:true,
 \ }

call plug#begin('~/.vim/plugged')


" Utils 
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vuciv/vim-bujo'

" Theme
Plug 'ghifarit53/tokyonight-vim'

" IDE tools
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Editor tools
Plug 'tpope/vim-surround'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'Yggdroot/indentLine'
Plug 'tpope/vim-repeat'

" Git integration
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'
Plug 'airblade/vim-gitgutter'

" Snippets and autocompletion
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Copilot
Plug 'github/copilot.vim'

call plug#end()


" Color scheme and theme config
syntax on
set cursorline
hi LineNr guibg=none ctermbg=none
set termguicolors
let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 0 
let g:airline_theme = 'tokyonight'
let g:tokyonight_transparent_background = 1
colorscheme tokyonight

" Todo plugin
nmap <C-S> <Plug>BujoAddnormal
imap <C-S> <Plug>BujoAddinsert
nmap <C-Q> <Plug>BujoChecknormal
imap <C-Q> <Plug>BujoCheckinsert

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" KEY REMAPS
" Map leader key
let mapleader=" "
nmap <leader>n :NERDTreeToggle<CR>
nnoremap <silent> <leader>j :vert term<CR>
nnoremap <silent> <leader>k :ter<CR Markdown config
let g:vim_markdown_folding_disabled = 2

" COC-SECTION
" Coc-Autocompletion

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

