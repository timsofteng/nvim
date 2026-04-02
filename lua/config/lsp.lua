local on_attach = function(_, _)
	vim.keymap.set("n", "<leader>lW", vim.diagnostic.setqflist)
end

-- Enable the following language servers
local servers = {
	"gopls",
	"golangci_lint_ls",
	"ty",
	"ruff",
	"lua_ls",
	"stylua",
	"bashls",
	"marksman",
	"templ",
	"buf_ls",
	"rust-analyzer",
	"texlab",
	"biome",
}

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

local defaultOpts = {
	autostart = true,
	on_attach = on_attach,
	capabilities = capabilities,
}

for _, lsp in ipairs(servers) do
	vim.lsp.config[lsp] = defaultOpts
end

vim.lsp.config("gopls", {
	settings = {
		gopls = {
			codelenses = {
				test = true, -- Run test / Run benchmark
				generate = true, -- go:generate
				tidy = true,
			},
		},
	},
})

vim.lsp.config.lua_ls =
	vim.tbl_extend("error", defaultOpts, { settings = { Lua = { diagnostics = { globals = { "vim" } } } } })

vim.lsp.config.html = vim.tbl_extend("error", defaultOpts, { filetypes = { "html", "templ" } })
vim.lsp.config.ts_ls =
	vim.tbl_extend("error", defaultOpts, { root_markers = { "turbo.json", "tsconfig.json", "package.json", ".git" } })

vim.lsp.config.texlab = vim.tbl_extend("error", defaultOpts, {
	settings = {
		texlab = {
			build = {
				executable = "tectonic",
				args = {
					"-X",
					"compile",
					"%f",
					"--synctex",
					"--keep-logs",
					"--keep-intermediates",
				},

				forwardSearchAfter = true,
				onSave = true,
			},
			forwardSearch = {
				-- https://github.com/f3fora/nvim-texlabconfig?tab=readme-ov-file#skim
				executable = "/Applications/Skim.app/Contents/SharedSupport/displayline",
				args = { "%l", "%p", "%f" },
			},
		},
	},
})

for _, lsp in ipairs(servers) do
	vim.lsp.enable(lsp)
end
