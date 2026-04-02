local zenmode = require("zen-mode")

zenmode.setup({
	window = {
		backdrop = 0.95, -- shade the backdrop of the Zen window. Set to 1 to keep the same as Normal
		width = 120, -- width of the Zen window
		height = 1, -- height of the Zen window
	},
	plugins = {
		tmux = { enabled = true }, -- disables the tmux statusline
	},
})

vim.keymap.set("n", "<Leader><Leader>", ":ZenMode<cr>", { desc = "Zen mode" })
