--Auto install packer.nvim if not exists
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}
  use  {'nvim-lua/popup.nvim'}
  use {'nvim-lua/plenary.nvim'}

  -- use {'ggandor/leap.nvim'}
  -- require('leap').set_default_keymaps()

  -- use {'phaazon/hop.nvim'}
  -- require'hop'.setup()

  --- optimization ---------------------------
  use 'lewis6991/impatient.nvim'

  --- Project and Sessions ---------------------------
  use { 'tpope/vim-obsession' }

  --history tree
  use { 
    'mbbill/undotree',
    opt = true,
    cmd = {"UndotreeToggle"},
    config = function() require'config.undotree' end
  }
  -- use {
  --   'kevinhwang91/nvim-bqf',
  --   config = function() require'config.bqf' end
  -- }
  -----------------------------------------------------



  --- File Tree ---------------------------
  use {'kyazdani42/nvim-tree.lua',
    opt = true,
    cmd = {"NvimTreeToggle", "NvimTreeFindFile"},
    config = function() require'config.nvim-tree' end
  }
  -----------------------------------------------------



  --- Buffers ---------------------------
  use { 'arithran/vim-delete-hidden-buffers', }
  use { 
    "folke/zen-mode.nvim",
    opt = true,
    cmd = {"ZenMode"},
    config = function() require'config.zenmode' end
  }
  use { 
    'folke/which-key.nvim',
    config = function() require'config.which-key' end
  }
  use 'folke/twilight.nvim'
  -----------------------------------------------------



  --- LSP and Completion ---------------------------
  use { 
    'neovim/nvim-lspconfig',
    -- opt = true,
    -- cmd = {"LspStart"},
    config = function() require'config.lsp' end
  }

  use 'jose-elias-alvarez/typescript.nvim'

  use { 
    'hrsh7th/nvim-cmp',
    -- opt = true,
    -- event = { "InsertEnter", "CmdlineEnter" },
    requires = {
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-path",
      'andersevenrud/cmp-tmux',
      'saadparwaiz1/cmp_luasnip',
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
    },
    config = function() require'config.cmp' end
  }

  use { 
    'j-hui/fidget.nvim',
    config = function() require'config.fidget' end
  }
  -- use { 'mattn/emmet-vim' }
  -----------------------------------------------------



  --- Linters ---------------------------
  use { 
    'sbdchd/neoformat',
  }
 use { 'tpope/vim-sleuth' }
 use { 'tpope/vim-dispatch' }
 -- use { 'mfussenegger/nvim-lint',
 --    config = function() require'config.nvim-lint' end
 --  }
  -- use { 'jose-elias-alvarez/null-ls.nvim',
  --   config = function() require'config.null-ls' end
  -- }

  -- use {
  --   "folke/trouble.nvim",
  --   requires = "kyazdani42/nvim-web-devicons",
  --   config = function()
  --     require("trouble").setup {
  --       -- your configuration comes here
  --       -- or leave it empty to use the default settings
  --       -- refer to the configuration section below
  --     }
  --   end
  -- }

  -----------------------------------------------------


  --- Search And Fuzzy ---------------------------
  use {
    'nvim-telescope/telescope.nvim',
    opt = true,
    keys = {"n", '<Leader>f'},
    cmd = {'Telescope'},
    config = function() require'config.telescope' end
  }

  -- use { 
  --   'windwp/nvim-spectre',
  --   config = function() require'config.spectre' end
  -- }
  -- use { 'dyng/ctrlsf.vim' }
  -----------------------------------------------------



  --- Git ---------------------------
  use {
    'lewis6991/gitsigns.nvim',
    keys = {"n", '<Leader>g'},
    cmd = {'Gitsigns'},
    config = function()
      require'config.gitsigns'
    end
  }
  use { 
    'sindrets/diffview.nvim',
    opt = true,
    cmd = {'DiffviewOpen', 'DiffviewFileHistory'},
    config = function() require'config.diffview' end
  }
  use 'emmanueltouzery/agitator.nvim'
  -----------------------------------------------------



  --- Appearence ---------------------------
  --themes
  use { 
    "ellisonleao/gruvbox.nvim",
    config = function() require'config.colorscheme' end
  }
  use { 
    'nvim-treesitter/nvim-treesitter',
    config = function() require'config.treesitter' end
  }
  use { 
    'windwp/nvim-ts-autotag',
  }
  use { 
    'nvim-lualine/lualine.nvim', 
    config = function() require'config.lualine' end
  } 
  -----------------------------------------------------


  --- Floating Code ---------------------------
  --commenting tool
  use { 'tpope/vim-abolish' }
  -- use {
  --   'numToStr/Comment.nvim',
  --   config = function()
  --       require('Comment').setup()
  --   end
-- }
  use { 'tpope/vim-commentary' }
  use {'JoosepAlviste/nvim-ts-context-commentstring'}
  --surrounder
  use { 'tpope/vim-surround' }
  use { 
    'windwp/nvim-autopairs',
    config = function() require'config.autopairs' end
  }
  --repeat by "." for custom plugins
  use { 'tpope/vim-repeat' }
  -----------------------------------------------------


  ---- Writers work -----------------------------------
  -- use {'lervag/vimtex'}
  -- use {
  --   "nvim-neorg/neorg",
  --   config = function() require'config.neorg' end
  -- }
  -----------------------------------------------------


  ---- Integrations -----------------------------------
  -- use { 'NTBBloodbath/rest.nvim' }
  use 'tpope/vim-dadbod'
  use 'kristijanhusak/vim-dadbod-ui'
  use { "williamboman/mason.nvim",
    opt = true,
    cmd = {"Mason"},
    config = function() require("mason").setup() end
  }

end
)

