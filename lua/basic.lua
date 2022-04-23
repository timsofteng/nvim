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

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  float =  { border = "single" },
})

-- temporary solution from resizing for tmux
vim.api.nvim_exec([[
  augroup foo
    autocmd!
    autocmd VimResized * wincmd =
  augroup END
]], false)

--yank hint
vim.cmd[[au TextYankPost * lua vim.highlight.on_yank {higroup="IncSearch", timeout=150, on_visual=true}]]


function ToggleQuickFix()
  if vim.fn.empty(fn.filter(vim.fn.getwininfo(), "v:val.quickfix")) then vim.cmd("copen")
  else vim.cmd("cclose") end
end

