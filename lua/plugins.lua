--Auto install packer.nvim if not exists
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- local packer_group = vim.api.nvim_create_augroup('Packer', { clear = true })
-- vim.api.nvim_create_autocmd('BufWritePost', { command = 'source <afile> | PackerCompile', group = packer_group, pattern = 'init.lua' })

return require('packer').startup({function(use)

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}
  use 'lewis6991/impatient.nvim'

  --- Project and Sessions ---------------------------
  --sessions
  use { 'tpope/vim-obsession' }

  --UNIX command in vim
  use { 
    'folke/which-key.nvim',
    config = function() require'config.which-key' end
  }

  --history tree
  use { 
    'mbbill/undotree',
    config = function() require'config.undotree' end
  }
  use {
    'kevinhwang91/nvim-bqf',
    config = function() require'config.bqf' end
  }
  -----------------------------------------------------



  --- File Tree ---------------------------
  use {'kyazdani42/nvim-tree.lua',
    config = function() require'config.nvim-tree' end
  }
  -----------------------------------------------------



  --- Buffers ---------------------------
  use { 'arithran/vim-delete-hidden-buffers', }
  use { 
    "folke/zen-mode.nvim",
    config = function() require'config.zenmode' end
  }
  -----------------------------------------------------



  --- LSP and Completion ---------------------------
  use { 
    'neovim/nvim-lspconfig',
    config = function() require'config.lsp' end
  }

  use { 
    'hrsh7th/nvim-cmp',
    -- opt = true,
    -- events = "InsertEnter",
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

  -- use { 'jose-elias-alvarez/nvim-lsp-ts-utils' }
  -----------------------------------------------------



  --- Linters ---------------------------
  use { 'sbdchd/neoformat' }
  use { 'tpope/vim-sleuth' }
  use { 'tpope/vim-dispatch' }
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
    requires = {
      {'nvim-lua/popup.nvim'}, 
     {'nvim-lua/plenary.nvim'}
    },
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
    'tpope/vim-fugitive',
    config = function() require'config.fugitive' end
  }
  -- use { 
  --   'TimUntersberger/neogit',
  --   config = function()
  --     require'config.neogit'
  --   end
  -- }
  use {
    'lewis6991/gitsigns.nvim',
    config = function()
      require'config.gitsigns'
    end
  }
  use { 
    'sindrets/diffview.nvim',
    config = function() require'config.diffview' end
  }
  -- use { 'tanvirtin/vgit.nvim',
  --   config = function() require'config.vgit' end
  -- }
  -----------------------------------------------------



  --- Appearence ---------------------------
  --themes
  -- use { 
  --   'lifepillar/vim-gruvbox8',
  --   config = function() require'config.colorscheme' end
  -- }
  use { 
    "ellisonleao/gruvbox.nvim",
    config = function() require'config.colorscheme' end
  }
  use { 
    'nvim-treesitter/nvim-treesitter',
    -- run = ':TSUpdate',
    config = function() require'config.treesitter' end
  }
  -- use {
  --   'lewis6991/spellsitter.nvim',
  --   config = function()
  --     require('spellsitter').setup()
  --   end
  -- }
  use { 
    'windwp/nvim-ts-autotag'
  }
  use { 
    'nvim-lualine/lualine.nvim', 
    config = function() require'config.lualine' end
  } 
  -----------------------------------------------------


  --- Floating Code ---------------------------
  --commenting tool
  use { 'tpope/vim-abolish' }
  use { 'tpope/vim-commentary' }
  use {'JoosepAlviste/nvim-ts-context-commentstring'}
  -- use { 
  --   'andymass/vim-matchup',
  --   config = function() require'config.matchup' end
  -- }
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
  use {'lervag/vimtex'}
  -- use {
  --   "nvim-neorg/neorg",
  --   config = function() require'config.neorg' end
  -- }
  -----------------------------------------------------


  ---- Integrations -----------------------------------
  -- use { 'christoomey/vim-tmux-navigator' }
  -- use { 'NTBBloodbath/rest.nvim' }

end,
  config = {
    profile = {
      enable = true,
      threshold = 1 -- the amount in ms that a plugins.load time must be over for it to be included in the profile
    }
  }
})
