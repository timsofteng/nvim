require("tmux").setup({
	navigation = {
		enable_default_keybindings = false,
	},
	copy_sync = {
		enable = false,
	},
	resize = {
		enable_default_keybindings = false,
	},
})

vim.keymap.set("n", "<M-h>", '<cmd>lua require("tmux").move_left()<cr>')
vim.keymap.set("n", "<M-j>", '<cmd>lua require("tmux").move_bottom()<cr>')
vim.keymap.set("n", "<M-k>", '<cmd>lua require("tmux").move_top()<cr>')
vim.keymap.set("n", "<M-l>", '<cmd>lua require("tmux").move_right()<cr>')

vim.keymap.set("n", "<M-H>", '<cmd>lua require("tmux").resize_left()<cr>')
vim.keymap.set("n", "<M-J>", '<cmd>lua require("tmux").resize_bottom()<cr>')
vim.keymap.set("n", "<M-K>", '<cmd>lua require("tmux").resize_top()<cr>')
vim.keymap.set("n", "<M-L>", '<cmd>lua require("tmux").resize_right()<cr>')
