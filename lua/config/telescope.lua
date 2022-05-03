local telescope = require 'telescope'
local actions = require 'telescope.actions'
local keymap = vim.keymap.set
local action_layout = require("telescope.actions.layout")

local findFileCmd = "find_command=rg,--hidden,--files"

keymap('n', '<leader>ff', '<cmd>Telescope find_files '..findFileCmd..' <cr>', {noremap = true})
keymap('n', '<leader>fc', '<cmd>Telescope live_grep<cr>', {noremap = true})
keymap('n', '<leader>fg', '<cmd>Telescope git_files<cr>', {noremap = true})
keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', {noremap = true})
keymap('n', '<leader>fh', '<cmd>Telescope command_history<cr>', {noremap = true})
keymap('n', '<leader>fm', '<cmd>Telescope marks<cr>', {noremap = true})
keymap('n', '<leader>f.', '<cmd>Telescope resume<cr>', {noremap = true})

telescope.setup { 
  defaults ={
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
}

