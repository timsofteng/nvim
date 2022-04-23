local vgit = require('vgit')
local utils = require('vgit.utils')

vgit.setup({
  keymaps = {
    ['n <leader>gs'] = 'toggle_buffer_hunks',
    ['n <leader>gp'] = 'buffer_hunk_preview',
    ['n <leader>gf'] = 'buffer_diff_preview',
    ['n <leader>gh'] = 'buffer_history_preview',
    ['n <leader>gb'] = 'buffer_gutter_blame_preview',
  },
  controller = {
    hunks_enabled = false,
    blames_enabled = true,
  },
})
