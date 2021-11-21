let g:coc_disable_startup_warning = 1

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source $HOME/.config/nvim/coc.vim
source $HOME/.config/nvim/vim-plug.vim
source $HOME/.config/nvim/themes/onedark.vim
source $HOME/.config/nvim/keybinds.vim

set number
set tabstop=4
set sw=4
set path+=**
set cursorline
set noshowmode 

