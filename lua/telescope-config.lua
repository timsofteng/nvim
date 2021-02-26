local vimp = require('vimp')
local telescope = require 'telescope'
local actions = require 'telescope.actions'
local builtinPickers = require('telescope.builtin')

vimp.nnoremap('<leader>ff', builtinPickers.find_files)
vimp.nnoremap('<leader>fr', builtinPickers.live_grep)
vimp.nnoremap('<leader>bb', builtinPickers.buffers)
vimp.nnoremap('<leader>fb', builtinPickers.file_browser)

local cfg = {
  sorting_strategy = 'ascending',
  prompt_position = 'top',
  scroll_strategy = 'cycle',
  mappings = {
    i = {
      ['<C-K>'] = actions.move_selection_previous,
      ['<C-J>'] = actions.move_selection_next,
      ['<Esc>'] = actions.close,
    },
  },
}

telescope.setup {defaults = cfg}
