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

vim.api.nvim_create_autocmd({"VimResized"}, {
  command = "wincmd = ",
})


-- Highlight on yank
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})


function ToggleQuickFix()
  if vim.fn.empty(fn.filter(vim.fn.getwininfo(), "v:val.quickfix")) then vim.cmd("copen")
  else vim.cmd("cclose") end
end
