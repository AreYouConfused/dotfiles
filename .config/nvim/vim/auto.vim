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

