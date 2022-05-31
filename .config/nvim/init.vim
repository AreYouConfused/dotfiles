runtime vim-plug.vim
runtime coc.vim
runtime themes/onedark.vim
runtime keybinds.vim
colorscheme dracula
let g:airline_theme = 'dracula'

set number
set tabstop=8
set sw=8 
set sts=8
set path+=**
set cursorline
set noshowmode 
set listchars=tab:\|->,space:·,nbsp:␣,trail:•,eol:$,precedes:«,extends:»

"autocmd FileType c   setlocal foldmethod=marker
"autocmd FileType c   setlocal foldmarker=/*,*/
"autocmd FileType cpp setlocal foldmethod=marker
"autocmd FileType cpp setlocal foldmarker=/*,*/

augroup ReduceNoise
    autocmd!
    " Automatically resize active split to 85 width
    autocmd WinEnter * :call ResizeSplits()

	autocmd WinEnter * setlocal cursorline
	autocmd WinEnter * setlocal signcolumn=auto

	autocmd WinLeave * setlocal nocursorline
	autocmd WinLeave * setlocal signcolumn=no
augroup END

function! ResizeSplits()
    set winwidth=85
    wincmd =
endfunction

autocmd FileType c,cpp nmap <F5> :term make run<CR>
autocmd FileType tex nmap <F5> :w<CR> :!pdflatex %<CR>
autocmd FileType tex set spell spelllang=en_us
