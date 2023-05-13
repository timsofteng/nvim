local telescope = require 'telescope'
local actions = require 'telescope.actions'
local keymap = vim.keymap.set
local action_layout = require("telescope.actions.layout")

local findFileCmd = "find_command=rg,--files"

local opts = {noremap = true, silent = true}

keymap('n', '<leader>ff', '<cmd>Telescope find_files '..findFileCmd..' <cr>', opts)
keymap('n', '<leader>fc', '<cmd>Telescope live_grep<cr>', opts)
keymap('n', '<leader>fg', '<cmd>Telescope git_files<cr>', opts)
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>',opts)
keymap('n', '<leader>fh', '<cmd>Telescope command_history<cr>', opts)
keymap('n', '<leader>fm', '<cmd>Telescope marks<cr>', opts)
keymap('n', '<leader>f.', '<cmd>Telescope resume<cr>', opts)
keymap('n', '<leader>fq', '<cmd>Telescope quickfixhistory<cr>', opts)
keymap('n', '<leader>f?', '<cmd>Telescope help_tags<cr>', opts)

telescope.setup {
  defaults ={
    layout_strategy = 'bottom_pane',
    sorting_strategy = 'ascending',
    scroll_strategy = 'cycle',
    borderchars = { '─', '│', '─', '│', '┌', '┐', '┘', '└'},
    layout_config = {
      prompt_position = "top",
      vertical = {
        mirror = true,
      },
    },
    mappings = {
      i = {
        ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
        ['<C-o>'] = action_layout.toggle_preview,
      },
      n = {
        ['<Esc>'] = false,
        ['<C-c>'] = actions.close,
        ['<C-o>'] = action_layout.toggle_preview,
      }
    },
    preview = {
      hide_on_startup = true,
    },
  },
  pickers = {
		buffers = {
			sort_lastused = true
		},
    live_grep = {
      preview = {
        hide_on_startup = false,
      },
    },
  },
}

