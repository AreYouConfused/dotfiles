nmap <C-n><C-n> :set invrelativenumber<CR>

nmap ga <Plug>(EasyAlign)

nmap * *ztkkjj

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
"
let g:stabs_maps = 'boO='

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
        \ pumvisible() ? "\<C-n>" :
        \ <SID>check_back_space() ? StabsTab():
        \ coc#refresh()
  
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

inoremap {}<cr> {<cr>}<c-o>O
inoremap []<cr> [<cr>]<c-o>O
inoremap ()<cr> (<cr>)<c-o>O

nmap <space>f <Cmd>CocCommand explorer<CR>

nmap <leader>f <Cmd>CocFix<cr>

nmap <leader>l <Cmd>set list!<cr>

autocmd FileType c,cpp nmap <F5> :term make run<CR>

nmap <C-[> :prev<cr>
nmap <C-]> :next<cr>
