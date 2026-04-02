require("aerial").setup({
	layout = {
		default_direction = "prefer_left",
		max_width = { 0.5 },
	},
	close_on_select = true,
})
vim.keymap.set("n", "<Leader>pa", ":AerialToggle<CR>", { desc = "Aerial" })
