local keymap = vim.keymap.set
keymap('n', '<Leader>*', ":UndotreeToggle<cr>", {noremap = true})

vim.g.undotree_SplitWidth = 40
vim.g.undotree_DiffpanelHeight = 15
vim.g.undotree_SetFocusWhenToggle = 1
