--map leader to space
vim.g.mapleader = " "

local keymap = vim.keymap.set

local opts = { noremap = true, silent = true }

local function toggle_quickfix()
	local qf_wins = vim.tbl_filter(function(w)
		return w.quickfix == 1
	end, vim.fn.getwininfo())
	if #qf_wins > 0 then
		vim.cmd("cclose")
	else
		vim.cmd("copen")
	end
end

-- Quicker way to save file
keymap("n", "<Leader>ww", ":w<cr>", vim.tbl_extend("error", opts, { desc = "Safe buffer" }))
keymap("n", "<Leader>wa", ":wa<cr>", vim.tbl_extend("error", { desc = "Save [a]ll buffers" }, opts))

keymap("n", "<Leader>#", ":set number!<cr>", vim.tbl_extend("error", opts, { desc = "Numbers toggle" }))

-- Diagnostic keymaps
keymap("n", "[d", function()
	vim.diagnostic.jump({ count = -1, float = true })
end)

keymap("n", "]d", function()
	vim.diagnostic.jump({ count = 1, float = true })
end)

-- quickfix
keymap("n", "<leader>qq", toggle_quickfix, unpack(opts))
keymap("n", "[q", ":cprev<cr>", vim.tbl_extend("error", { desc = "prev [q]f item" }, opts))
keymap("n", "]q", ":cnext<cr>", vim.tbl_extend("error", { desc = "next [q]f item" }, opts))
keymap("n", "[Q", ":cold<cr>", vim.tbl_extend("error", { desc = "older [Q]f list" }, opts))
keymap("n", "]Q", ":cnew<cr>", vim.tbl_extend("error", { desc = "newer [Q]f list" }, opts))

-- pipe selected to ix
keymap("v", "<Leader>@", ":'<,'>w !ixi<cr>", vim.tbl_extend("error", { desc = "Load to pastebin" }, opts))

keymap("i", "<C-e>", "<C-o>$", opts)

keymap("n", "<Leader>cp", ":let @+=expand('%:p')<cr>", vim.tbl_extend("error", { desc = "Copy absolute path" }, opts))
keymap("v", "<Leader>y", '"+y', opts)

keymap(
	"n",
	"<Leader>bc",
	":DeleteHiddenBuffers<cr>",
	vim.tbl_extend("error", { desc = "[c]lear hidden buffers" }, opts)
)

-- Better command history navigation
keymap("c", "<C-p>", "<Up>", { silent = false })
keymap("c", "<C-n>", "<Down>", { silent = false })

keymap("n", "<Leader>*", [[:Undotree<cr>]], { desc = "UndoTree", unpack(opts) })
