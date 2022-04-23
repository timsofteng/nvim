local keymap = vim.keymap.set
keymap('n', '<leader>rp', require('spectre').open, {noremap = true})

keymap('n', '<leader>rf', require('spectre').open_file_search, {noremap = true})

require('spectre').setup({
  color_devicons = false,
})
