vim.g.mapleader = ' '

local keymap = vim.keymap.set

opts = {noremap = true, silent = true}

keymap('n', '<leader>gb', require('agitator').git_blame_toggle, opts)
keymap('n', '<leader>gt', require('agitator').git_time_machine, opts)
keymap('n', '<leader>go', require('agitator').open_file_git_branch)
