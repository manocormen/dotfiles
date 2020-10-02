" Remap escape to kj
inoremap kj <esc>
cnoremap kj <c-c> 

" Add line numbers
set number relativenumber

" Add plugins
call plug#begin("~/.local/share/nvim/site/autoload/plugged")
Plug 'haishanh/night-owl.vim'
call plug#end()

" Enable theme
set termguicolors
colorscheme night-owl
