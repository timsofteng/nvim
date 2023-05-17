local keymap = vim.keymap.set

opts = { noremap = true, silent = true }

keymap("n", "<Leader>bc", ":DeleteHiddenBuffers<cr>", { desc = "Delete hidden buffers", unpack(opts) })
keymap("n", "<Leader>=", ":Neoformat<cr>", { desc = "Format with ext tool", unpack(opts) })
keymap("n", "<Leader><Leader>", ":ZenMode<cr>", { desc = "Zen mode", unpack(opts) })
-- keymap("n", "<Leader>gb", ":G blame<cr>", { desc = "Blame", unpack(opts) })
-- keymap("n", "<Leader>p", "<cmd>NvimTreeToggle<CR>", { desc = "Tree" })
keymap("n", "<Leader>P", "<cmd>NvimTreeFindFile<CR>", { desc = "Tree (find)" })
keymap("n", "<Leader>*", [[:UndotreeToggle<cr>]], { desc = "UndoTree", unpack(opts) })

keymap('n', '<Leader>gg', ":Neogit<cr>", opts)
