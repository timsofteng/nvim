require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"c",
		"bash",
		"lua",
		"vim",
		"javascript",
		"typescript",
		"python",
		"tsx",
		"go",
		"css",
		"scss",
		"html",
		"jq",
		"json",
		"regex",
		"dot",
		-- "yaml",
		"ini",
		"diff",
		"make",
		"markdown",
		"gitcommit",
		"gitignore",
		"hurl"
	},

	highlight = {
		enable = true, -- false will disable the whole extension
		disable = {}, -- list of language that will be disabled
	},
	autotag = {
		enable = true,
	},
	-- not work good yet
	indent = {
		enable = true,
	},
	matchup = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			node_incremental = ";",
			node_decremental = ",",
		},
	},
	autopairs = { enable = true },
})

require('ts_context_commentstring').setup {
}
-- vim.g.skip_ts_context_commentstring_module = true
