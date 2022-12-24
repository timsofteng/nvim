local lspconfig = require 'lspconfig'
local keymap = vim.keymap.set

local outerOpts = { noremap=true, silent=true }

keymap('n', '<leader>ls', '<cmd>LspStart <cr>', outerOpts)
keymap('n', '<leader>lS', '<cmd>LspStop <cr>', outerOpts)

local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr }
  keymap('n', 'gD', vim.lsp.buf.declaration, opts)
  keymap('n', 'gd', vim.lsp.buf.definition, opts)
  keymap('n', 'K', vim.lsp.buf.hover, opts)
  keymap('n', '<leader>lW', vim.diagnostic.setqflist)
  keymap('n', '<C-k>', vim.lsp.buf.signature_help, opts)
  keymap('n', 'gr', vim.lsp.buf.references, opts)
  keymap('n', '<leader>la', vim.lsp.buf.code_action, opts)
  keymap('n', '<leader>lr', vim.lsp.buf.rename, opts)
end


-- LSP settings (for overriding per client)
-- local handlers =  {
--   ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "single"}),
--   ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = "single" }),
-- }

-- Enable the following language servers
local servers = { 'gopls', 'vuels', 'pyright', 'cssls', 'sumneko_lua', 'bashls', 'eslint' }
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    autostart = false,
    on_attach = on_attach,
    capabilities = capabilities,
    handlers = handlers,
  }
end

require("typescript").setup({
  disable_commands = false, -- prevent the plugin from creating Vim commands
  debug = false, -- enable debug logging for commands
  server = { -- pass options to lspconfig's setup method
    autostart = false,
    on_attach = on_attach,
    handlers = handlers,
    capabilities = capabilities,
  },
})
