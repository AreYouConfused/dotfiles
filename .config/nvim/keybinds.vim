nmap <C-n><C-n> :set invrelativenumber<CR>

nmap ga <Plug>(EasyAlign)

nmap * *ztkkjj

"inoremap <silent><expr> <TAB>
      "\ pumvisible() ? "\<C-n>" :
      "\ <SID>check_back_space() ? "\<TAB>" :
      "\ coc#refresh()
"inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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

inoremap {<cr> {<cr>}<c-o>O
inoremap [<cr> [<cr>]<c-o>O
inoremap (<cr> (<cr>)<c-o>O

nmap <space>f <Cmd>CocCommand explorer<CR>

nmap <leader>f <Cmd>CocFix<cr>
