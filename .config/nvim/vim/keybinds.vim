nmap <C-n><C-n> :set invrelativenumber<CR>

nmap ga <Plug>(EasyAlign)

nmap * *ztkkjj

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
	\ coc#pum#visible() ? coc#pum#next(1):
	\ <SID>check_back_space() ? "\<Tab>" :
	\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

let g:stabs_maps = 'boO='

" Use tab for trigger completion with characters ahead and navigate.
"inoremap <silent><expr> <TAB>
        "\ pumvisible() ? "\<C-n>" :
        "\ <SID>check_back_space() ? StabsTab():
        "\ coc#refresh()
  
" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter.
"inoremap <silent><expr> <CR> pumvisible() ? coc#_select_confirm()
"                           \: "\<C-g>u".StabsCR()."\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <F2> <Plug>(coc-rename)

function! CocToggle()
    if g:coc_enabled
        CocDisable
    else
        CocEnable
    endif
endfunction
command! CocToggle :call CocToggle()

nmap <C-h><C-h> :call CocToggle()<CR>

nmap <C-j> <plug>(coc-diagnostic-next)
nmap <C-k> <plug>(coc-diagnostic-prev)

nnoremap   <silent>   <F12>   :FloatermToggle<CR>
tnoremap   <silent>   <F12>   <C-\><C-n>:FloatermToggle<CR>

nmap <space>f <Cmd>CocCommand explorer<CR>

nmap <leader>f <Cmd>CocFix<cr>

nmap <leader>l <Cmd>set list!<cr>

nmap <C-[> :prev<cr>
nmap <C-]> :next<cr>
