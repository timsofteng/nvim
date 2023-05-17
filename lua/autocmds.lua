--compilers by filetyp
local compilers = {
  go="compiler go",
  -- typescript="compiler tsc",
  -- typescriptreact="compiler tsc",
}

for fileType, command in pairs(compilers) do
  vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = fileType,
    command = command,
  })
end

vim.api.nvim_create_autocmd({"VimResized"}, {
  command = "wincmd = ",
})

-- Highlight on yank
local yankGrp = vim.api.nvim_create_augroup("YankHighlight", { clear = true })

vim.api.nvim_create_autocmd("TextYankPost", {
  command = "silent! lua vim.highlight.on_yank()",
  group = yankGrp,
})

--colorscheme transparent
-- local transparentFlag = " guibg=NONE"

-- local elementsToTransparent = {
--   "Normal",
--   "SignColumn",
--   "GitSignsAdd",
--   "GitSignsChange",
--   "GitSignsDelete",
--   "GitSignsDelete",
--   "DiagnosticSignError",
--   "DiagnosticSignHint",
--   "DiagnosticSignWarn",
--   "DiagnosticSignInfo",
--   "FloatBorder",
--   "NormalFloat",
-- }


-- for _, highlight in ipairs(elementsToTransparent) do
--   vim.api.nvim_create_autocmd({"ColorScheme"}, {
--     command = "hi "..highlight..transparentFlag,
--   })
-- end
