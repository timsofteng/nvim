vim.opt.hidden = false
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

-- vim.opt.langmap = "йq,цw,уe,кr,еt,нy,гu,шi,щo,зp,х[,ї],фa,іs,вd,аf,пg,рh,оj,лk,дl,ж\\;,є',ґ\\,яz,чx,сc,мv,иb,тn,ьm,б\\,,ю.,./,ЙQ,ЦW,УE,КR,ЕT,НY,НY,ГU,ШI,ЩO,ЗP,Х{,Ї},ФA,ІS,ВD,АF,ПG,РH,ОJ,ЛK,ДL,Ж\\:,Є\",Ґ|,ЯZ,ЧX,СC,МV,ИB,ТN,ЬM,Б\\<,Ю>,№#"

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
