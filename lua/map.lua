--map leader to space
vim.g.mapleader = ' '

local keymap = vim.keymap.set

-- Diagnostic keymaps
keymap('n', '<leader>e', vim.diagnostic.open_float)
keymap('n', '[d', vim.diagnostic.goto_prev)
keymap('n', ']d', vim.diagnostic.goto_next)
-- keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev({ float =  { border = "rounded" }})<CR>')
-- keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next({ float =  { border = "rounded" }})<CR>')
keymap('n', '<leader>q', vim.diagnostic.setloclist)

-- quickfix
keymap('n', '<Leader>qo', ":copen<cr>", {noremap = true})
keymap('n', '<Leader>qq', ":ccl<cr>", {noremap = true})
keymap('n', '[q', ":cprev<cr>", {noremap = true})
keymap('n', ']q', ":cnext<cr>", {noremap = true})
keymap('n', '[Q', ":cold<cr>", {noremap = true})
keymap('n', ']Q', ":cnext<cr>", {noremap = true})
-- keymap('n', '<Leader>qq',  require("utils").toggleQuickFix, {noremap = true})


-- "Disable ability change all letters to lowercase
-- "in visual mode by press "u"
-- xnoremap u <nop>
-- "search word in visual mode by predding "//"
-- vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
--
--"disable highlighting by double Esc
keymap('n', '<Esc>', ":noh<cr>", {noremap = true})
keymap('n', '[b', ":bprev<cr>", {noremap = true})
keymap('n', ']b', ":bnext<cr>", {noremap = true})
--
-- "write with sudo 
-- command -nargs=0 SUw w !sudo tee %
-- '")
-- "

--for some plugins
keymap('n', '<Leader>bc', ":DeleteHiddenBuffers<cr>", {noremap = true})
keymap('n', '<Leader>=', ":Neoformat<cr>", {noremap = true})
keymap('n', '<Leader>z', ":ZenMode<cr>", {noremap = true})
keymap('n', '<Leader>cp', ":let @+=expand('%')<cr>", {noremap = true})
keymap('n', '<Leader>cP', ":let @+=expand('%:p')<cr>", {noremap = true})
