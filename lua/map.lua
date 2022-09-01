--map leader to space
vim.g.mapleader = ' '

local keymap = vim.keymap.set

opts = {noremap = true, silent = true}

-- Diagnostic keymaps
keymap('n', '<leader>e', vim.diagnostic.open_float)
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)
keymap('n', '<leader>q', vim.diagnostic.setloclist)

-- quickfix
keymap('n', '<Leader>qo', ":copen<cr>", opts)
keymap('n', '<Leader>qq', ":ccl<cr>", opts)
keymap('n', '[q', ":cprev<cr>", opts)
keymap('n', ']q', ":cnext<cr>", opts)
keymap('n', '[Q', ":cold<cr>", opts)
keymap('n', ']Q', ":cnext<cr>", opts)

-- pipe selected to ix
keymap('v', '<Leader>@', ":'<,'>w !ixi<cr>", opts)


keymap('i', '<C-e>', "<C-o>$", opts)
keymap('i', '<C-s>', "<C-o>:w<cr>", opts)
-- keymap('n', '<Leader>qq',  require("utils").toggleQuickFix, {noremap = true})


-- "Disable ability change all letters to lowercase
-- "in visual mode by press "u"
-- xnoremap u <nop>
-- "search word in visual mode by predding "//"
-- vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
--
--"disable highlighting by double Esc
-- keymap('n', '<Esc><Esc>', ":noh<cr>", opts)
keymap('n', '[b', ":bprev<cr>", opts)
keymap('n', ']b', ":bnext<cr>", opts)
--
-- "write with sudo 
-- command -nargs=0 SUw w !sudo tee %
-- '")
-- "

--for some plugins
keymap('n', '<Leader>bc', ":DeleteHiddenBuffers<cr>", opts)
keymap('n', '<Leader>=', ":Neoformat<cr>", opts)
keymap('n', '<Leader>z', ":ZenMode<cr>", opts)
keymap('n', '<Leader>cp', ":let @+=expand('%')<cr>", opts)
keymap('n', '<Leader>cP', ":let @+=expand('%:p')<cr>", opts)
keymap('v', '<Leader>y', '"+y', opts)
keymap('n', '<Leader>gb', ":G blame<cr>", opts)
keymap('n', '<Leader>gg', ":Neogit<cr>", opts)
-- keymap('n', '<leader>gb', require('agitator').git_blame_toggle)
-- keymap('n', '<leader>gt', require('agitator').git_time_machine)
-- keymap('n', '<leader>go', require('agitator').open_file_git_branch)
