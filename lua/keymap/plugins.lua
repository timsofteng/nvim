local keymap = vim.keymap.set

opts = { noremap = true, silent = true }
keymap("n", "<Leader>bc", ":DeleteHiddenBuffers<cr>", { desc = "Delete hidden buffers", unpack(opts) })
keymap("n", "<Leader>=", ":Neoformat<cr>", { desc = "Format with ext tool", unpack(opts) })
keymap("n", "<Leader><Leader>", ":ZenMode<cr>", { desc = "Zen mode", unpack(opts) })
keymap("n", "<Leader>gb", ":G blame<cr>", { desc = "Blame", unpack(opts) })
keymap("n", "<Leader>p", "<cmd>NvimTreeToggle<CR>", { desc = "Tree" })
keymap("n", "<Leader>P", "<cmd>NvimTreeFindFile<CR>", { desc = "Tree (find)" })
keymap("n", "<Leader>*", [[:UndotreeToggle<cr>]], { desc = "UndoTree", unpack(opts) })

-- keymap('n', '<Leader>gg', ":Neogit<cr>", opts)
--keymap('n', '<leader>gb', require('agitator').git_blame_toggle, opts)
--keymap('n', '<leader>gt', require('agitator').git_time_machine, opts)
--keymap('n', '<leader>go', require('agitator').open_file_git_branch)
