require("mini.surround").setup()
-- vim.keymap.del("x", "ys")
-- Remap adding surrounding to Visual mode selection
vim.keymap.set("x", "S", [[:<C-u>lua MiniSurround.add('visual')<CR>]], { silent = true })
