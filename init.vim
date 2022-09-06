set clipboard=unnamedplus
set completeopt=noinsert,menuone,noselect
set cursorline
set hidden
set inccommand=split
set mouse=a
set number
set relativenumber
set splitbelow splitright
set title
set ttimeoutlen=0
set wildmenu
set expandtab
set shiftwidth=4
set tabstop=4

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


nnoremap <C-Up> <C-w>+
nnoremap <C-Down> <C-w>-
nnoremap <C-Left> <C-w><
nnoremap <C-Right> <C-w>>

call plug#begin()
    " Appearance
    Plug 'vim-airline/vim-airline'
    Plug 'morhetz/gruvbox'
"   Plug 'ryanoasis/vim-devicons'

    " Utilities
"   Plug 'sheerun/vim-polyglot'
"   Plug 'jiangmiao/auto-pairs'
    Plug 'preservim/nerdtree'

    " Completion / linters / formatters
"   Plug 'neoclide/coc.nvim',  {'branch': 'master', 'do': 'yarn install'}
"   Plug 'plasticboy/vim-markdown'

    " Git
"   Plug 'airblade/vim-gitgutter'

" Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
 Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
" Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
" Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
" Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
" Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
" Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

call plug#end()

colorscheme gruvbox

" Start NERDTree. If a file is specified, move the cursor to its window
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" File browser
nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
