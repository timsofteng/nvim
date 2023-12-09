local lspconfig = require("lspconfig")
local keymap = vim.keymap.set

local outerOpts = { noremap = true, silent = true }

keymap("n", "<leader>ls", "<cmd>LspStart <cr>", { desc = "Start lsp", unpack(opts) })
keymap("n", "<leader>lS", "<cmd>LspStop <cr>", { desc = "Stop lsp", unpack(opts) })

local on_attach = function(_, bufnr)
	local opts = { buffer = bufnr }
	keymap("n", "gD", vim.lsp.buf.declaration, opts)
	keymap("n", "gd", vim.lsp.buf.definition, opts)
	keymap("n", "K", vim.lsp.buf.hover, opts)
	keymap("n", "<leader>lW", vim.diagnostic.setqflist)
	keymap("n", "<C-k>", vim.lsp.buf.signature_help, opts)
	keymap("n", "gr", vim.lsp.buf.references, opts)
	keymap("n", "<leader>la", vim.lsp.buf.code_action, opts)
	keymap("n", "<leader>lr", vim.lsp.buf.rename, opts)
end

-- LSP settings (for overriding per client)
-- local handlers =  {
--   ["textDocument/hover"] =  vim.lsp.with(vim.lsp.handlers.hover, {border = "single"}),
--   ["textDocument/signatureHelp"] =  vim.lsp.with(vim.lsp.handlers.signature_help, {border = "single" }),
-- }

-- Enable the following language servers
local servers = {
	"gopls",
	"vuels",
	"tsserver",
	"pylsp",
	"cssls",
	"lua_ls",
	"bashls",
	"eslint",
	"marksman",
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		autostart = false,
		on_attach = on_attach,
		capabilities = capabilities,
		handlers = handlers,
	})
end
