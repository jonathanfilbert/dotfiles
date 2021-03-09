" ====== VIMRC by Jonathan Filbert =======


" ====== Basic Settings =======
syntax on

set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set colorcolumn=80

"highlight ColorColumn ctermbg=0 guibg=lightgrey
set belloff=all
" ====== Basic Settings =======


" ====== Custom plugins Sections =======
call plug#begin('~/vim/plugged')
Plug 'https://github.com/leafgarland/typescript-vim' "Typescript color
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } "Golang support
Plug 'https://github.com/kien/ctrlp.vim' "Ctrl+P file searching support
Plug 'mbbill/undotree' "Undo visualizer
Plug 'preservim/nerdtree' "File tree visualizer
Plug 'git@github.com:Valloric/YouCompleteMe.git' "YCM
Plug 'sheerun/vim-polyglot'
"Plug 'https://github.com/joshdick/onedark.vim' "onedark




call plug#end()
" ====== Custom plugins Sections =======

set background=dark
