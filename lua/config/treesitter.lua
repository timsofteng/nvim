local ts = require("nvim-treesitter")
local langs = {
	"bash",
	"c",
	"css",
	"csv",
	"dockerfile",
	"gitcommit",
	"gitignore",
	"go",
	"hcl",
	"html",
	"javascript",
	"lua",
	"python",
	"styled",
	"tsx",
	"typescript",
	"vim",
	"vimdoc",
	"zig",
	"latex",
	"sql",
	"yaml",
}
ts.install(langs)

vim.api.nvim_create_autocmd("FileType", {
	pattern = langs,
	callback = function()
		vim.treesitter.start()
		vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
	end,
})

require("treesitter-context").setup({
	enable = true,
	line_numbers = false,
})

vim.keymap.set("n", "[c", function()
	require("treesitter-context").go_to_context(vim.v.count1)
end, { silent = true })

require("nvim-ts-autotag").setup()
