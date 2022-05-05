vim.opt.hidden = false
vim.opt.undofile = true
vim.opt.backupcopy = "yes"
vim.opt.completeopt = {"menuone", "noinsert"}
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.breakindent = true
vim.opt.mouse = "a"
vim.opt.cursorline = true
vim.opt.spelllang = "en,ru,uk"
vim.opt.spelloptions = 'camel'
vim.opt.spellcapcheck = ""
vim.opt.lazyredraw = true
vim.opt.updatetime = 250
-- vim.opt.signcolumn = 'yes'
vim.opt.termguicolors=true

vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2

vim.g.do_filetype_lua = 1
vim.g.did_load_filetypes = 0

-- vim.g.vimtex_compiler_method = 'tectonic'

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  float =  { border = "single" },
})

vim.g.dbs = {jeka_bot = 'postgres://tim@localhost:5432/tim'}
