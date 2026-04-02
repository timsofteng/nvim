local add = MiniDeps.add
local now, later = MiniDeps.now, MiniDeps.later

now(function()
	add("echasnovski/mini.sessions")
	require("mini.sessions").setup()

	add("tpope/vim-sleuth")

	add("stevearc/oil.nvim")
	require("config.oil")

	add("ellisonleao/gruvbox.nvim")
	require("config.colorscheme")

	add("nvim-lualine/lualine.nvim")
	require("config.lualine")

	add("akinsho/git-conflict.nvim")
	require("git-conflict").setup({})

	add("keaising/im-select.nvim")
	require("im_select").setup({})

	add("hat0uma/csvview.nvim")
	require("config.csvview")

	add({
		source = "nvim-treesitter/nvim-treesitter",
		depends = {
			"nvim-treesitter/nvim-treesitter-context",
			"windwp/nvim-ts-autotag",
		},
		hooks = {
			post_checkout = function()
				vim.cmd("TSUpdate")
			end,
		},
	})
	require("config.treesitter")

	add("neovim/nvim-lspconfig")
	require("config.lsp")
end)

later(function()
	vim.cmd.packadd("nvim.undotree")

	-- a lot of plugins use it
	add("nvim-lua/plenary.nvim")

	add("stevearc/aerial.nvim")
	require("config.aerial")

	add("folke/ts-comments.nvim")
	require("ts-comments").setup()

	add("lewis6991/gitsigns.nvim")
	require("config.gitsigns")

	add("j-hui/fidget.nvim")
	require("fidget").setup({})

	add("arithran/vim-delete-hidden-buffers")

	add("folke/zen-mode.nvim")
	require("config.zen")

	add("dmmulroy/tsc.nvim")
	require("tsc").setup({
		flags = {
			incremental = true,
		},
	})

	add({
		source = "mfussenegger/nvim-dap",
		depends = {
			"igorlfs/nvim-dap-view",
			"nvim-neotest/nvim-nio",
			"leoluz/nvim-dap-go",
		},
	})
	require("config.dap")
	require("dap-go").setup()

	add({
		source = "nvim-neotest/neotest",
		depends = {
			"nvim-neotest/nvim-nio",
			"antoinemadec/FixCursorHold.nvim",
			"nvim-treesitter/nvim-treesitter",
			-- "fredrikaverpil/neotest-golang",
		},
	})
	-- require("config.neotest")
	-- add({
	-- 	source = "fredrikaverpil/neotest-golang",
	-- 	checkout = "stream",
	-- })

	add("stevearc/conform.nvim")
	require("config.conform")

	add("mfussenegger/nvim-lint")
	require("config.nvim-lint")

	add("tpope/vim-abolish")

	add("FabijanZulj/blame.nvim")
	require("blame").setup()

	add("nvim-telescope/telescope.nvim")
	require("config.telescope")

	add({
		source = "ThePrimeagen/harpoon",
		checkout = "harpoon2",
	})
	require("config.harpoon")

	add({
		source = "hrsh7th/nvim-cmp",
		depends = {
			"L3MON4D3/LuaSnip",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-path",
			"andersevenrud/cmp-tmux",
		},
	})
	require("config.cmp")

	add({
		source = "L3MON4D3/LuaSnip",
		depends = {
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip",
		},
	})
	require("config.luasnip")

	add("echasnovski/mini.pairs")
	require("mini.pairs").setup()

	add("aserowy/tmux.nvim")
	require("config.tmux")

	add({ source = "echasnovski/mini.clue", checkout = "stable" })
	require("config.mini-clue")

	add({ source = "echasnovski/mini.surround", checkout = "stable" })
	require("config.mini-surround")

	add("https://codeberg.org/trevorhauter/gitportal.nvim")
	require("gitportal").setup({
		always_include_current_line = true, -- Include the current line in permalinks by default
	})

	add({
		source = "brianhuster/live-preview.nvim",
		depends = { "nvim-telescope/telescope.nvim" },
	})
end)
