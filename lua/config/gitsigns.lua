require("gitsigns").setup({
	signcolumn = false,
})

local function toggle_gitsigns()
	local gs = require("gitsigns")
	gs.toggle_signs()
	gs.toggle_numhl()
	gs.toggle_deleted()
	gs.toggle_linehl()
	gs.toggle_word_diff()
	gs.toggle_current_line_blame()
end

vim.keymap.set("n", "<leader>gb", ":Gitsigns blame<cr>", { desc = "[b]lame" })
vim.keymap.set("n", "<leader>gs", toggle_gitsigns, { desc = "Git [s]igns" })
