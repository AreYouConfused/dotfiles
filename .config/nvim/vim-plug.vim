let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'bfrg/vim-cpp-modern'
Plug 'frazrepo/vim-rainbow'
Plug 'ervandew/supertab'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'KabbAmine/vCoolor.vim'
Plug 'IngoMeyer441/coc_current_word'
Plug 'voldikss/vim-floaterm'
Plug 'alvan/vim-closetag'
Plug 'luochen1990/indent-detector.vim'

call plug#end()

" airline
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" vim-rainbow
let g:rainbow_active = 1
let g:rainbow_guifgs = ['skyblue', 'goldenrod', '#c678dd']

let g:coc_current_word_highlight_delay = 0
let g:coc_current_word_filetypes = ['*']

let g:SuperTabDefaultCompletionType = "<c-n>"

nmap <space>f <Cmd>CocCommand explorer<CR>

