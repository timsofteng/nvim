local keymap = vim.keymap.set
require('gitsigns').setup({
  signcolumn=false
})
keymap('n', '<leader>gs', ':Gitsigns toggle_signs<CR>', {
  noremap = true,
  silent = true,
})
keymap('n', '<leader>gd', ':Gitsigns diffthis<CR>', {
  noremap = true,
  silent = true,
})
keymap('n', '<leader>gp', ':Gitsigns preview_hunk<CR>', {
  noremap = true,
  silent = true,
})
keymap('n', '<leader>gr', ':Gitsigns reset_hunk<CR>', {
  noremap = true,
  silent = true,
})
keymap('n', '<leader>gR', ':Gitsigns reset_buffer<CR>', {
  noremap = true,
  silent = true,
})
