local lspconfig = require('lspconfig')
vim.g.coq_settings = { auto_start = 'shut-up' }
local servers = { 'clangd', 'rust_analyzer', 'tsserver' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup(require('coq').lsp_ensure_capabilities({
    on_attach = lsp_attach,
  }))
end

lspconfig['pyright'].setup{
  require('coq').lsp_ensure_capabilities({
    on_attach = lsp_attach,
  }),
  python = {
    analysis = {
      autoSearchPaths = true,
      diagnosticMode = "workspace",
      useLibraryCodeForTypes = true,
    },
  }
}

