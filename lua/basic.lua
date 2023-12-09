-- vim.opt.hidden = false
-- vim.o.clipboard = 'unnamedplus'
vim.opt.smartindent = true
vim.opt.undofile = true
vim.opt.backupcopy = "yes"
vim.opt.completeopt = {"menuone", "noinsert"}
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- vim.opt.linebreak = true
vim.opt.cursorline = true

	-- vim.opt.lazyredraw = true
vim.opt.updatetime = 250
vim.opt.termguicolors=true

vim.opt.tabstop=2
vim.opt.softtabstop=2
vim.opt.shiftwidth=2

-- vim.opt.spell = true
-- vim.opt.spelllang = "en,ru,uk"
-- vim.opt.spelloptions = 'camel'
-- vim.opt.spellcapcheck = ""

-- slow down interface responsive
-- vim.opt.breakindent = true

-- vim.opt.langmap = "Ð¹q,Ñw,Ñe,Ðºr,Ðµt,Ð½y,Ð³u,Ñi,Ño,Ð·p,Ñ[,Ñ],Ña,Ñs,Ð²d,Ð°f,Ð¿g,Ñh,Ð¾j,Ð»k,Ð´l,Ð¶\\;,Ñ',Ò\\,Ñz,Ñx,Ñc,Ð¼v,Ð¸b,Ñn,Ñm,Ð±\\,,Ñ.,./,ÐQ,Ð¦W,Ð£E,ÐR,ÐT,ÐY,ÐY,ÐU,Ð¨I,Ð©O,ÐP,Ð¥{,Ð},Ð¤A,ÐS,ÐD,ÐF,ÐG,Ð H,ÐJ,ÐK,ÐL,Ð\\:,Ð\",Ò|,Ð¯Z,Ð§X,Ð¡C,ÐV,ÐB,Ð¢N,Ð¬M,Ð\\<,Ð®>,â#"

-- vim.g.vimtex_compiler_method = 'tectonic'

vim.diagnostic.config({
  virtual_text = true,
  signs = false,
  underline = true,
  update_in_insert = false,
  severity_sort = false,
  -- float =  { border = "single" },
})

	-- vim.g.dbs = {jeka_bot = 'postgres://tim@localhost:5432/tim'}

-- langmapper
local function escape(str)
  -- You need to escape these characters to work correctly
  local escape_chars = [[;,."|\]]
  return vim.fn.escape(str, escape_chars)
end

-- Recommended to use lua template string
local en = [[`qwertyuiop[]asdfghjkl;'zxcvbnm]]
local ru = [[ёйцукенгшщзхъфывапролджэячсмить]]
local en_shift = [[~QWERTYUIOP{}ASDFGHJKL:"ZXCVBNM<>]]
local ru_shift = [[ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ]]

vim.opt.langmap = vim.fn.join({
    -- | `to` should be first     | `from` should be second
    escape(ru_shift) .. ';' .. escape(en_shift),
    escape(ru) .. ';' .. escape(en),
}, ',')
