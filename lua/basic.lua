-- vim.o.cmdheight = 0
vim.opt.clipboard = "unnamedplus"
vim.opt.smartindent = true
vim.opt.undofile = true
vim.opt.backupcopy = "yes"
vim.opt.completeopt = { "menuone", "noinsert" }
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- vim.opt.linebreak = true
vim.opt.cursorline = true

vim.o.synmaxcol = 300 -- Don't syntax highlight long lines
vim.opt.lazyredraw = true
-- Decrease update time
vim.opt.updatetime = 250

-- Decrease mapped sequence wait time
-- vim.opt.timeoutlen = 300
vim.opt.termguicolors = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

vim.g.loaded_netrwPlugin = 0
vim.g.loaded_netrw = 0

-- vim.opt.spell = true
-- vim.opt.spelllang = "en,ru,uk"
-- vim.opt.spelloptions = 'camel'
-- vim.opt.spellcapcheck = ""

-- slow down interface responsive
vim.opt.breakindent = true

vim.opt.scrolloff = 5

vim.diagnostic.config({
	signs = false,
})
vim.o.winborder = "single"
