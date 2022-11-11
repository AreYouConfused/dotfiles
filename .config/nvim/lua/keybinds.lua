local opts = { noremap=true, silent=true }
local nmap = function(key, action)
  vim.keymap.set('n', key, action, opts)
end
local imap = function(key, action)
  vim.keymap.set('i', key, action, opts)
end
local imap = function(key, action)
  vim.keymap.set('i', key, action, opts)
end

vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
vim.keymap.set('n', '<C-k>', vim.diagnostic.goto_prev, opts)
vim.keymap.set('n', '<C-j>', vim.diagnostic.goto_next, opts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
lsp_attach_keybinds = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<space>k', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<space>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  --vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

nmap('<leader>l', function() vim.wo.list = not vim.wo.list end)
nmap('<C-[>', ':bp<cr>')
nmap('<C-]>', ':bN<cr>')
nmap('<C-n><C-n>', ':set invrelativenumber<cr>')

local builtin = require('telescope.builtin')
nmap('<space>f', builtin.find_files)

vim.keymap.set('n', 'ff', builtin.find_files, {})
vim.keymap.set('n', 'fg', builtin.live_grep, {})
vim.keymap.set('n', 'fb', builtin.buffers, {})
vim.keymap.set('n', 'fh', builtin.help_tags, {})

vim.api.nvim_create_autocmd('Filetype', {
  pattern = { 'python', },
  command = 'nmap <F5> :w<cr>:term python "%"<cr>A',
})

vim.api.nvim_create_autocmd('Filetype', {
  pattern = { 'cpp', },
  command = 'nmap <F5> :w<cr>:term clang++ -g "%" -o "%:r.out" && ./%:r.out<cr>A',
})

vim.api.nvim_create_autocmd('Filetype', {
  pattern = { 'c', },
  command = 'nmap <F5> :w<cr>:term clang -g "%" -o "%:r.out" && ./%:r.out<cr>A',
})
