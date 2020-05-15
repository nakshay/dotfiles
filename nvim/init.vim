if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(expand('~/.vim/plugged'))

Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'

call plug#end()

set nocompatible
if (has("termguicolors"))
  set termguicolors
endif

let g:airline_powerline_fonts = 1

"NERDTree config
map <silent> <C-p> :NERDTreeToggle<CR>
map <silent> <C-o> :NERDTreeFocus<CR>


"set hybrid line number
set number
set relativenumber

syntax enable
colorscheme nord
