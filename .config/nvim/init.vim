" Remap escape to kj
inoremap kj <esc>
cnoremap kj <c-c> 

" Add line numbers
set number relativenumber

" Add plugins
call plug#begin("~/.local/share/nvim/site/autoload/plugged")
Plug 'itchyny/lightline.vim'
Plug 'haishanh/night-owl.vim'
call plug#end()

" Enable nvim theme
set termguicolors
colorscheme night-owl

" Enable lightline theme
let g:lightline = { 'colorscheme': 'nightowl' }

" Add ruler
set colorcolumn=89
highlight ColorColumn guibg=#012239
