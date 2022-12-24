 -- vim autocommand example
 -- vim.cmd[[au ColorScheme * hi Normal ctermbg=none guibg=NONE]]



-- vim.g.gruvbox_baby_transparent_mode = true
require("gruvbox").setup({
 transparent_mode = true
})

vim.cmd [[ colorscheme gruvbox ]]
-- vim.cmd [[ colorscheme gruvbox-baby ]]
