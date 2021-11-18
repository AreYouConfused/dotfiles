nmap <C-n><C-n> :set invrelativenumber<CR>

nmap ga <Plug>(EasyAlign)

nmap * *ztkkjj

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

nmap <F2> <Plug>(coc-rename)

