require("conform").setup({
	formatters_by_ft = {
		proto = { "buf" },
		templ = { "templ" },
		sql = { "sqlfluff" },
		yaml = { "yq" },
	},
	default_format_opts = {
		lsp_format = "fallback",
	},
})

vim.keymap.set("n", "<Leader>=", [[:lua require("conform").format()<CR>]], { desc = "Format" })
