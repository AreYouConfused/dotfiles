call plug#begin('~/.config/nvim/plugged')

Plug 'https://github.com/bfrg/vim-cpp-modern'
Plug 'frazrepo/vim-rainbow'
Plug 'https://github.com/ervandew/supertab'
Plug 'joshdick/onedark.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'junegunn/vim-easy-align'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

"ale
let g:ale_lint_on_enter = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_linters = {'cpp': ['cpplint'],}
let g:ale_fixers = {
\		'*': ['remove_trailing_lines', 'trim_whitespace'],
\     'cpp': ['clang-format'],
\  'python': ['add_blank_lines_for_python_control_statements', 'black'],
\}
