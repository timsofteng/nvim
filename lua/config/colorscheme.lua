-- vim autocommand example
-- vim.cmd[[au ColorScheme * hi Normal ctermbg=none guibg=NONE]]
--

local transparentFlag = " guibg=NONE"

local elementsToTransparent = {
  "Normal",
  "SignColumn",
  "GitSignsAdd",
  "GitSignsChange",
  "GitSignsDelete",
  "GitSignsDelete",
  "DiagnosticSignError",
  "DiagnosticSignHint",
  "DiagnosticSignWarn",
  "DiagnosticSignInfo",
  "FloatBorder",
  "NormalFloat",
}


for _, highlight in ipairs(elementsToTransparent) do
  vim.api.nvim_create_autocmd({"ColorScheme"}, {
    command = "hi "..highlight..transparentFlag,
  })
end


vim.cmd [[ colorscheme gruvbox ]]
