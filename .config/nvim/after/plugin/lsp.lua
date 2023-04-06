local lspconfig = require('lspconfig')
local coq = require('coq')

vim.g.coq_settings = { auto_start = 'shut-up' }

local navic = require("nvim-navic")

local lsp_attach = function(client, bufnr)
  lsp_attach_keybinds(client, bufnr)
  if client.server_capabilities.documentSymbolProvider then
    navic.attach(client, bufnr)
  end
end

local servers = { 'sumneko_lua', 'pyright', 'clangd', 'rust_analyzer', 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(coq.lsp_ensure_capabilities({
    on_attach = lsp_attach,
  }))
end

