require("lint").linters_by_ft = {
	-- typescript = { "cspell" },
	-- typescriptreact = { "cspell" },
	go = { "golangcilint" },
	proto = { "buf_lint" }
}

vim.api.nvim_create_autocmd({ "TextChanged", "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
