let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/bfrg/vim-cpp-modern'
Plug 'frazrepo/vim-rainbow'
Plug 'https://github.com/ervandew/supertab'
Plug 'joshdick/onedark.vim'
Plug 'vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
"Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'https://github.com/Raimondi/delimitMate'
Plug 'KabbAmine/vCoolor.vim'
Plug 'IngoMeyer441/coc_current_word'
Plug 'voldikss/vim-floaterm'
Plug 'alvan/vim-closetag'

call plug#end()

" air-line
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

"ale
"let g:ale_lint_on_enter = 0
"let g:airline#extensions#ale#enabled = 1
"let g:ale_linters = {
"\     'cpp': ['cpplint'],
"\  'python': ['pylint'],
"\}
"
"let g:ale_fixers = {
"\		'*': ['remove_trailing_lines', 'trim_whitespace'],
"\     'cpp': ['clang-format'],
"\  'python': ['add_blank_lines_for_python_control_statements', 'black'],
"\}

inoremap {<cr> {<cr>}<c-o>O<tab>
inoremap [<cr> [<cr>]<c-o>O<tab>
inoremap (<cr> (<cr>)<c-o>O<tab>

let g:coc_current_word_highlight_delay = 0
let g:coc_current_word_filetypes = ['*']

let g:SuperTabDefaultCompletionType = "<c-n>"

nmap <space>f <Cmd>CocCommand explorer<CR>

