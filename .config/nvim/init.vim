source $HOME/.config/nvim/vim-plug/plugin.vim
source $HOME/.config/nvim/themes/onedark.vim
" source $HOME/.config/nvim/themes/nord.vim
source $HOME/.config/nvim/general/settings.vim
source $HOME/.config/nvim/themes/airline.vim
source $HOME/.config/nvim/general/commenter.vim
source $HOME/.config/nvim/general/telescope.vim
source $HOME/.config/nvim/vim-plug/coc.vim

" Twins of word under cursor:
let g:vim_current_word#highlight_twins = 1
" The word under cursor:
let g:vim_current_word#highlight_current_word = 1
nmap <C-n> :NERDTreeToggle<CR>
"Themes to use
syntax on
colorscheme onedark 
set number
let NERDTreeShowHidden=1
