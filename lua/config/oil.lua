vim.keymap.set("n", "<Leader>pp", "<cmd>Oil<CR>", { desc = "Oil" })
vim.keymap.set("n", "<Leader>P", "<cmd>vs|Oil<CR>", { desc = "Oil" })
local oil = require("oil")

-- oil.select({ close = true })

oil.setup({
	-- use_default_keymaps = false,
	select = { close = true },
	keymaps = {
		["g?"] = "actions.show_help",
		["<CR>"] = "actions.select",
		["<C-v>"] = "actions.select_vsplit",
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
