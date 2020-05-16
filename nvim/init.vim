
" Originally created by Akshay Naik (https://akshaynaik.net)
" https://github.com/nakshay/dotfiles/tree/master/nvim

if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(expand('~/.config/nvim/plugged'))

Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/fzf'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

set nocompatible
if (has("termguicolors"))
  set termguicolors
endif

let g:airline_powerline_fonts = 1

"NERDTree config
map <silent> <C-p> :NERDTreeToggle<CR>
map <silent> <C-o> :NERDTreeFocus<CR>
map <silent> <C-f> :Files<CR>


"set hybrid line number
set number
set relativenumber

syntax enable
colorscheme nord
