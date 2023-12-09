return {
	{ "nvim-lua/plenary.nvim" },

	--- Project and Sessions ---------------------------
	{ "tpope/vim-obsession", lazy = false },

	--history tree
	{
		"mbbill/undotree",
		cmd = { "UndotreeToggle" },
		config = function()
			require("config.undotree")
		end,
	},
	{
		"kevinhwang91/nvim-bqf",
		lazy = false,
		config = function()
			require("config.bqf")
		end,
	},
	-----------------------------------------------------

	--Lang
	{
		'Wansmer/langmapper.nvim',
		lazy = false,
		priority = 1, -- High priority is needed if you will use `autoremap()`
		config = function()
			require("config.langmapper")
		end,
	},

	-----------------------------------------------------

	--- Navigation ---------------------------
	{
		"stevearc/oil.nvim",
		lazy = false,
		config = function()
			require("config.oil")
		end,
	},
	-- {
	-- 	"chrishrb/gx.nvim",
	-- 	event = { "BufEnter" },
	-- 	dependencies = { "nvim-lua/plenary.nvim" },
	-- 	config = true, -- default settings
	-- },
	-- {
	--   'ggandor/leap.nvim',
	--    config = function() require('leap').add_default_mappings() end,
	--   lazy= false
	--    -- keys = {
	--    --  {"n", 's'},
	--    --  {"n", 'S'}
	--   -- },
	-- },

	-----------------------------------------------------

	--- Buffers ---------------------------
	{
		"arithran/vim-delete-hidden-buffers",
		lazy = false,
	},
	{
		"folke/zen-mode.nvim",
		cmd = { "ZenMode" },
		config = function()
			require("config.zen")
		end,
	},
	 {
	 	"folke/which-key.nvim",
	 	lazy = false,
	 	config = function()
	 		require("config.which-key")
	 	end,
	 },
	 {
	 	"folke/twilight.nvim",
	 	cmd = { "Twilight" },
	 },
	---------------------------------------------------

	--- LSP and Completion ---------------------------
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			require("config.lsp")
		end,
	},
	{
		"dmmulroy/tsc.nvim",
		ft = { "typescript", "typescriptreact" },
		config = function()
			require("tsc").setup({
				flags = {
					incremental = true,
				},
			})
		end,
	},
	{ "j-hui/fidget.nvim" },
	-- {
	-- 	"pmizio/typescript-tools.nvim",
	-- 	ft = { "typescript", "typescriptreact" },
	-- 	dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
	-- 	opts = {},
	-- 	config = function()
	-- 		require("typescript-tools").setup({
	-- 			settings = {
	-- 				tsserver_plugins = { "typescript-styled-plugin" },
	-- 			},
	-- 		})
	-- 	end,
	-- },

	-- {
	-- 	"jose-elias-alvarez/typescript.nvim",
	-- },

	{
		"hrsh7th/nvim-cmp",
		event = { "InsertEnter", "CmdlineEnter" },
		keys = {
		  {
		'<C-n>',
		function() require('config.cmp').bufKey() end,
		mode = 'i',
		  },
		  {
		'<C-p>',
		function() require('config.cmp').lspKey() end,
		mode = 'i',
		  },
		  {
		'<C-l>',
		function() require('config.cmp').snippetKey() end,
		mode = 'i',
		  },
		},
		keys = {
		  {"<c-n>", mode = "i"},
		  {"<c-l>", mode = "i"},
		  {"<c-p>", mode = "i"},
		  {"<c-i>", mode = "c"},
		},
		lazy = false,
		dependencies = {
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-path",
			"andersevenrud/cmp-tmux",
		},
		config = function()
			require("config.cmp")
		end,
	},
	{
		"L3MON4D3/LuaSnip",
		config = function()
			require("config.luasnip")
		end,
		-- keys = {'i', '<C-l>'},
		dependencies = {
			"rafamadriz/friendly-snippets",
			"saadparwaiz1/cmp_luasnip",
		},
	},

	--  { 'mattn/emmet-vim' }
	-----------------------------------------------------

	--- Debug ---------------------------
	{
		"mfussenegger/nvim-dap",
		dependencies = {
			"rcarriga/nvim-dap-ui",
		},
		config = function()
			require("config.dap")
		end,
	},

	--- Linters ---------------------------
	{
		"sbdchd/neoformat",
		cmd = { "Neoformat" },
	},
	{
		"tpope/vim-sleuth",
		lazy = false,
	},
	{ "tpope/vim-dispatch" },
	{
		"mfussenegger/nvim-lint",
		lazy = false,
		config = function()
			require("config.nvim-lint")
		end,
	},
	--  { 'jose-elias-alvarez/null-ls.nvim',
	--   config = function() require'config.null-ls' end
	-- }

	--  {
	--   "folke/trouble.nvim",
	--   requires = "kyazdani42/nvim-web-devicons",
	--   config = function()
	--     require("trouble").setup {
	--       -- your configuration comes here
	--       -- or leave it empty to  the default settings
	--       -- refer to the configuration section below
	--     }
	--   end
	-- }

	-----------------------------------------------------

	--- Search And Fuzzy ---------------------------
	{
		"nvim-telescope/telescope.nvim",
		keys = { "n", "<Leader>f" },
		dependencies = { "telescope-fzf-native.nvim" },
		cmd = { "Telescope" },
		config = function()
			require("config.telescope")
		end,
	},

	{
		"nvim-telescope/telescope-fzf-native.nvim",
		build = "make",
	},

	{
		"dyng/ctrlsf.vim",
		cmd = { "CtrlSF" },
	},
	-----------------------------------------------------

	--- Git ---------------------------
	{'akinsho/git-conflict.nvim',
		lazy = false,
		version = "*",
		config = true},
	{
		"lewis6991/gitsigns.nvim",
		keys = { "n", "<Leader>gs" },
		cmd = { "Gitsigns" },
		config = function()
			require("config.gitsigns")
		end,
	},
	{
		"sindrets/diffview.nvim",
		cmd = { "DiffviewOpen", "DiffviewFileHistory" },
		config = function()
			require("config.diffview")
		end,
	},
	{
		"emmanueltouzery/agitator.nvim",
		keys = { "n", "<Leader>gb" },
		config = function()
			require("config.agitator")
		end,
	},
	{
		"NeogitOrg/neogit",
		-- cmd = { "Neogit" },
		keys = { "n", "<Leader>gg" },
		config = true,
		-- config = function()
		-- 	require("config.neogit")
		-- end,
	},

	-- { "tpope/vim-fugitive", keys = { "n", "<Leader>g" } },
	-----------------------------------------------------

	--- Appearence ---------------------------
	--themes
	{
		"ellisonleao/gruvbox.nvim",
		priority = 100,
		lazy = false,
		config = function()
			require("config.colorscheme")
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		config = function()
			require("config.treesitter")
		end,
		dependencies = {
			"windwp/nvim-ts-autotag",
			"JoosepAlviste/nvim-ts-context-commentstring",
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		config = function()
			require("config.lualine")
		end,
	},
	-- {
	--   'nanozuki/tabby.nvim',
	--   lazy = false,
	--   config = function() require'config.tabby' end
	-- },

	-- {
	--   'uga-rosa/ccc.nvim',
	--   lazy = false,
	-- },
	-----------------------------------------------------

	--- Floating Code ---------------------------
	--commenting tool
	{
		"tpope/vim-abolish",
		lazy = false,
	},
	-- {
	-- 	'numToStr/Comment.nvim',
	-- 	keys = { { "gc", mode = { "n", "v" } }, { "gb", mode = { "n", "v" } } },
	-- 	dependencies = {
	-- 		"JoosepAlviste/nvim-ts-context-commentstring",
	-- 	},
	-- 	config = function()
	-- 		require('Comment').setup({
	-- 			{
	-- 				pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
	-- 			}
	-- 		})
	-- 	end
	-- },
	{
		"tpope/vim-commentary",
		keys = { { "gc", mode = "v" }, "gcc" },
	},

	{
		"danymat/neogen",
		dependencies = "nvim-treesitter/nvim-treesitter",
		cmd = "Neogen",
		config = true,
		version = "*",
	},

	--surrounder
	-- {
	-- 	"tpope/vim-surround",
	-- 	-- 'kylechui/nvim-surround',
	-- 	event = { "InsertEnter" },
	-- 	-- config = function()
	-- 	--   require("nvim-surround").setup()
	-- 	--   end
	-- },
	{
		"kylechui/nvim-surround",
		event = { "InsertEnter" },
		config = function()
			require("config.surround")
		end,
	},
	{
		"windwp/nvim-autopairs",
		event = { "InsertEnter" },
		config = function()
			require("config.autopairs")
		end,
	},
	-----------------------------------------------------

	---- Writers work -----------------------------------
	--  {'lervag/vimtex'}
	--  {
	--   "nvim-neorg/neorg",
	--   config = function() require'config.neorg' end
	-- }
	-----------------------------------------------------

	---- Integrations -----------------------------------
	--  { 'NTBBloodbath/rest.nvim' }
	{
		"aserowy/tmux.nvim",
		lazy = false,
		-- config = function()
		-- 	require("config.tmux")
		-- end,
	},
	"tpope/vim-dadbod",
	"kristijanhusak/vim-dadbod-ui",
	{
		"williamboman/mason.nvim",
		cmd = { "Mason" },
		config = function()
			require("mason").setup()
		end,
	},

	{
		"folke/neodev.nvim",
		ft = "lua",
	},
	{
		"iamcco/markdown-preview.nvim",
		ft = "markdown",
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
	},

	-- { "https://git.sr.ht/~soywod/himalaya-vim", lazy = false },
}
