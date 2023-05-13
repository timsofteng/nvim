--map leader to space
vim.g.mapleader = ' '

local keymap = vim.keymap.set

opts = {noremap = true, silent = true}

-- Quicker way to save file
keymap('n', '<Leader>ww', ":w<cr>", { desc = "Save buffer", unpack(opts) })
keymap('n', '<Leader>wa', ":wa<cr>", { desc = "Save [a]ll buffers", unpack(opts) })

keymap('n', '<Leader>#', ":set number!<cr>", { desc = "Numbers toggle", unpack(opts) })

-- Diagnostic keymaps
keymap('n', '<leader>e', vim.diagnostic.open_float)
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)
keymap('n', '<leader>q', vim.diagnostic.setloclist)

--Buffers
keymap('n', '[b', ":bprev<cr>", {desc = "Prev buffer", unpack(opts) })
keymap('n', ']b', ":bnext<cr>", {desc = "Next buffer", unpack(opts) })

-- quickfix
keymap('n', '<Leader>qo', ":copen<cr>",  {desc = "Open qf", unpack(opts) })
keymap('n', '<Leader>qq', ":ccl<cr>",  {desc = "Close qf", unpack(opts) })
keymap('n', '[q', ":cprev<cr>",  {desc = "Prev qf item", unpack(opts) })
keymap('n', ']q', ":cnext<cr>",  {desc = "Next qf item", unpack(opts) })
keymap('n', '[Q', ":cold<cr>",  {desc = "Older qf list", unpack(opts) })
keymap('n', ']Q', ":cnew<cr>",  {desc = "Newer qf list", unpack(opts) })

-- pipe selected to ix
keymap('v', '<Leader>@', ":'<,'>w !ixi<cr>",  {desc = "Load to pastebin", unpack(opts) })


keymap('i', '<C-e>', "<C-o>$", opts)
keymap('i', '<C-s>', "<C-o>:w<cr>", opts)

-- Remap for dealing with word wrap
-- keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", {expr = true, silent = true})
-- keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", {expr = true, silent = true})

-- keymap('n', '<Leader>qq',  require("utils").toggleQuickFix, {noremap = true})


-- "Disable ability change all letters to lowercase
-- "in visual mode by press "u"
-- xnoremap u <nop>
-- "search word in visual mode by predding "//"
-- vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
--
--"disable highlighting by double Esc
-- keymap('n', '<Esc><Esc>', ":noh<cr>", opts)
--
-- "write with sudo
-- command -nargs=0 SUw w !sudo tee %
-- '")
-- "

keymap('n', '<Leader>cp', ":let @+=expand('%')<cr>", {desc = "Copy relative path", unpack(opts) })
keymap('n', '<Leader>cP', ":let @+=expand('%:p')<cr>", {desc = "Copy absolute path", unpack(opts) })
keymap('v', '<Leader>y', '"+y', opts)
