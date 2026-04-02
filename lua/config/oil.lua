local oil = require("oil")

oil.setup({
	-- use_default_keymaps = false,
	watch_for_changes = true,
	select = { close = true },
	keymaps = {
		["g?"] = "actions.show_help",
		["<CR>"] = "actions.select",
		["<C-x>"] = "actions.select_split",
		["<C-t>"] = "actions.select_tab",
		["<C-p>"] = "actions.preview",
		["<C-c>"] = "actions.close",
		-- ["<C-L>"] = "actions.refresh",
		["-"] = "actions.parent",
		["_"] = "actions.open_cwd",
		["`"] = "actions.cd",
		["~"] = "actions.tcd",
		["g."] = "actions.toggle_hidden",
	},
})

vim.keymap.set("n", "<Leader>pp", "<cmd>Oil<CR>", { desc = "Oil" })
vim.keymap.set("n", "<Leader>PP", "<cmd>vs|Oil<CR>", { desc = "Oil (split)" })
