" onedark.vim override: Don't set a background color when running in a terminal;
if (has("autocmd") && !has("gui_running"))
  augroup colorset
    autocmd!
    let s:white = { "gui": "#e0d8e4", "cterm": "145", "cterm16" : "7" }
    autocmd ColorScheme * call onedark#set_highlight("Normal", { "fg": s:white }) " `bg` will not be styled since there is no `bg` setting
	autocmd ColorScheme * call onedark#extend_highlight("Comment", { "fg": { "gui": "#72777f" }})
	autocmd ColorScheme * call onedark#extend_highlight("gitcommitComment", { "fg": { "gui": "#72777f" }})
	autocmd ColorScheme * call onedark#extend_highlight("Folded", { "fg": { "gui": "#72777f" }})
	autocmd ColorScheme * call onedark#extend_highlight("LineNr", { "fg": { "gui": "Grey" }})
	autocmd ColorScheme * call onedark#extend_highlight("CursorLineNr", { "bg": { "gui": "Black" }})
	autocmd ColorScheme * call onedark#extend_highlight("EndOfBuffer", { "fg": {"gui": "grey" }})
  augroup END
endif

hi Comment cterm=italic
let g:onedark_hide_endofbuffer=1
let g:onedark_terminal_italics=1
let g:onedark_termcolors=256

let g:airline_theme='onedark'

syntax on
colorscheme onedark

" checks if your terminal has 24-bit color support
if (has("termguicolors"))
    set termguicolors
    hi LineNr ctermbg=NONE guibg=NONE
endif
