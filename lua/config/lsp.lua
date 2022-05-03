local lspconfig = require 'lspconfig'
local keymap = vim.keymap.set

keymap('n', '<leader>ls', '<cmd>LspStart <cr>', {noremap = true, silent = true})
keymap('n', '<leader>lS', '<cmd>LspStop <cr>', {noremap = true, silent = true})

local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr }
  keymap('n', 'gD', vim.lsp.buf.declaration, opts)
  keymap('n', 'gd', vim.lsp.buf.definition, opts)
  keymap('n', 'K', vim.lsp.buf.hover, opts)
  keymap('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  keymap('n', '<leader>lr', vim.lsp.buf.rename, opts)
  keymap('n', 'gr', vim.lsp.buf.references, opts)
  keymap('n', '<leader>la', vim.lsp.buf.code_action, opts)
end

-- nvim-cmp supports additional completion capabilities
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)
capabilities.textDocument.completion.completionItem.snippetSupport = true

-- LSP settings (for overriding per client)
local handlers =  {
  ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "single"}),
  ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = "single" }),
}

-- Enable the following language servers
local servers = { 'gopls', 'vuels', 'pyright', 'tsserver', 'cssls' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    autostart = false,
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
  }
end
