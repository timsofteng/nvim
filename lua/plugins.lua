return {
  -- Packer can manage itself as an optional plugin
   {'nvim-lua/popup.nvim'},
   {'nvim-lua/plenary.nvim'},

  --  {'ggandor/leap.nvim'}
  -- require('leap').set_default_keymaps()

  --  {'phaazon/hop.nvim'}
  -- require'hop'.setup()

  --- optimization ---------------------------
   -- 'lewis6991/impatient.nvim'

  --- Project and Sessions ---------------------------
   { 'tpope/vim-obsession',
	lazy = false,
   },

  --history tree
   -- { 
   --  'mbbill/undotree',
   --  cmd = {"UndotreeToggle"},
   --  config = function() require'config.undotree' end
  -- },
  --  {
  --   'kevinhwang91/nvim-bqf',
  --   config = function() require'config.bqf' end
  -- }
  -----------------------------------------------------



  --- File Tree ---------------------------
   {'kyazdani42/nvim-tree.lua',
    cmd = {"NvimTreeToggle", "NvimTreeFindFile"},
    config = function() require'config.nvim-tree' end
  },

   -- {'nvim-neo-tree/neo-tree.nvim',
   --      branch = "v2.x",
   --    cmd = {"Neotree"},
   --    dependencies = {
	-- "MunifTanjim/nui.nvim",
   --  },
  --},
  -----------------------------------------------------



  --- Buffers ---------------------------
  { 'arithran/vim-delete-hidden-buffers', lazy = false },
  { 
    "folke/zen-mode.nvim",
    cmd = {"ZenMode"},
    config = function() require'config.zen' end
  },
  { 
    'folke/which-key.nvim',
    lazy = false,
    config = function() require'config.which-key' end
  },
  {
    'folke/twilight.nvim',
  },
  -----------------------------------------------------



  --- LSP and Completion ---------------------------
   { 
    'neovim/nvim-lspconfig',
    lazy = false,
    -- cmd = {"LspStart"},
    config = function() require'config.lsp' end
  },

  { 
    'jose-elias-alvarez/typescript.nvim',
    lazy = false,
  },

   { 
    'hrsh7th/nvim-cmp',
    -- event = { "InsertEnter", "CmdlineEnter" },
    keys = {
      {"<c-n>", mode = "i"},
      {"<c-p>", mode = "i"},
      {"<c-i>", mode = "c"},
    },
    --lazy = false,
    dependencies = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-path",
      'andersevenrud/cmp-tmux',
    },
    config = function() require'config.cmp' end
  },
  { 
    "L3MON4D3/LuaSnip",
    keys = {{"<c-l>", mode = "i"}},
    config = function() require'config.luasnip' end,
    dependencies = {
      'rafamadriz/friendly-snippets',
      'saadparwaiz1/cmp_luasnip',
    },
  },

  -- { 
  --   'j-hui/fidget.nvim',
  --   cmd = {"LspStart"},
  --   config = function() require'config.fidget' end
  -- },
  --  { 'mattn/emmet-vim' }
  -----------------------------------------------------



  --- Linters ---------------------------
  { 
    'sbdchd/neoformat',
    cmd = {'Neoformat'},
  },
  { 'tpope/vim-sleuth', lazy = false },
  { 'tpope/vim-dispatch' },
 --  { 'mfussenegger/nvim-lint',
 --    config = function() require'config.nvim-lint' end
 --  }
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
    'nvim-telescope/telescope.nvim',
    keys = {"n", '<Leader>f'},
    cmd = {'Telescope'},
    config = function() require'config.telescope' end
  },

  --  { 
  --   'windwp/nvim-spectre',
  --   config = function() require'config.spectre' end
  -- }
  --  { 'dyng/ctrlsf.vim' }
  -----------------------------------------------------



  --- Git ---------------------------
  {
    'lewis6991/gitsigns.nvim',
    keys = {"n", '<Leader>gs'},
    cmd = {'Gitsigns'},
    config = function()
      require'config.gitsigns'
    end
  },
   { 
    'sindrets/diffview.nvim',
    cmd = {'DiffviewOpen', 'DiffviewFileHistory'},
    config = function() require'config.diffview' end
  },
  'emmanueltouzery/agitator.nvim',
  -----------------------------------------------------



  --- Appearence ---------------------------
  --themes
  { 
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function() require'config.colorscheme' end
  },
  { 
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    event = "BufReadPost",
    config = function() require'config.treesitter' end,
    dependencies = {
      'windwp/nvim-ts-autotag',
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
  },
  { 
    'nvim-lualine/lualine.nvim', 
    lazy = false,
    config = function() require'config.lualine' end
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
    'tpope/vim-abolish',
    event = "BufReadPost",
  },
  --  {
  --   'numToStr/Comment.nvim',
  --   config = function()
  --       require('Comment').setup()
  --   end
-- }
   { 
     'tpope/vim-commentary',
      keys = {{"gc", mode = "v"}, "gcc"}
    },

  --surrounder
  { 
    'tpope/vim-surround', 
    -- 'kylechui/nvim-surround', 
    event = { "InsertEnter" },
    -- config = function()
    --   require("nvim-surround").setup()
    --   end
   },
   { 
    'windwp/nvim-autopairs',
     event = { "InsertEnter" },
     config = function() require'config.autopairs' end
  },
  --repeat by "." for custom plugins
   { 'tpope/vim-repeat', lazy = false },
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
   'tpope/vim-dadbod',
   'kristijanhusak/vim-dadbod-ui',
   { "williamboman/mason.nvim",
    cmd = {"Mason"},
    config = function() require("mason").setup() end
  }

}
