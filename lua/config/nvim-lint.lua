require("lint").linters_by_ft = {
	proto = { "buf_lint" },
	-- sql = { "sqlfluff" },
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
	callback = function()
		require("lint").try_lint()
	end,
})
