" Remap escape to kj
inoremap kj <esc>
cnoremap kj <c-c> 

" Add line numbers
set number relativenumber

" Add plugins
call plug#begin("~/.local/share/nvim/site/autoload/plugged")
call plug#end()
