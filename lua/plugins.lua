vim.pack.add({
  { src = "https://github.com/echasnovski/mini.sessions", name = "mini.sessions" },
  { src = "https://github.com/tpope/vim-sleuth", name = "vim-sleuth" },
  { src = "https://github.com/stevearc/oil.nvim", name = "oil.nvim" },
  { src = "https://github.com/ellisonleao/gruvbox.nvim", name = "gruvbox.nvim" },
  { src = "https://github.com/nvim-lualine/lualine.nvim", name = "lualine.nvim" },
  { src = "https://github.com/akinsho/git-conflict.nvim", name = "git-conflict.nvim" },
  { src = "https://github.com/keaising/im-select.nvim", name = "im-select.nvim" },
  { src = "https://github.com/hat0uma/csvview.nvim", name = "csvview.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter", name = "nvim-treesitter" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter-context", name = "nvim-treesitter-context" },
  { src = "https://github.com/windwp/nvim-ts-autotag", name = "nvim-ts-autotag" },
  { src = "https://github.com/neovim/nvim-lspconfig", name = "nvim-lspconfig" },
})

vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim", name = "plenary.nvim" },
  { src = "https://github.com/stevearc/aerial.nvim", name = "aerial.nvim" },
  { src = "https://github.com/folke/ts-comments.nvim", name = "ts-comments.nvim" },
  { src = "https://github.com/lewis6991/gitsigns.nvim", name = "gitsigns.nvim" },
  { src = "https://github.com/j-hui/fidget.nvim", name = "fidget.nvim" },
  { src = "https://github.com/arithran/vim-delete-hidden-buffers", name = "vim-delete-hidden-buffers" },
  { src = "https://github.com/folke/zen-mode.nvim", name = "zen-mode.nvim" },
  { src = "https://github.com/dmmulroy/tsc.nvim", name = "tsc.nvim" },
})

vim.pack.add({
  { src = "https://github.com/mfussenegger/nvim-dap", name = "nvim-dap" },
  { src = "https://github.com/igorlfs/nvim-dap-view", name = "nvim-dap-view" },
  { src = "https://github.com/nvim-neotest/nvim-nio", name = "nvim-nio" },
  { src = "https://github.com/leoluz/nvim-dap-go", name = "nvim-dap-go" },
})

vim.pack.add({
  { src = "https://github.com/nvim-neotest/neotest", name = "neotest" },
  { src = "https://github.com/antoinemadec/FixCursorHold.nvim", name = "FixCursorHold.nvim" },
})

vim.pack.add({
  { src = "https://github.com/stevearc/conform.nvim", name = "conform.nvim" },
  { src = "https://github.com/mfussenegger/nvim-lint", name = "nvim-lint" },
  { src = "https://github.com/tpope/vim-abolish", name = "vim-abolish" },
  { src = "https://github.com/FabijanZulj/blame.nvim", name = "blame.nvim" },
  { src = "https://github.com/nvim-telescope/telescope.nvim", name = "telescope.nvim" },
})

vim.pack.add({
  { src = "https://github.com/ThePrimeagen/harpoon", name = "harpoon" },
})

vim.pack.add({
  { src = "https://github.com/hrsh7th/nvim-cmp", name = "nvim-cmp" },
  { src = "https://github.com/L3MON4D3/LuaSnip", name = "LuaSnip" },
  { src = "https://github.com/hrsh7th/cmp-buffer", name = "cmp-buffer" },
  { src = "https://github.com/hrsh7th/cmp-nvim-lsp", name = "cmp-nvim-lsp" },
  { src = "https://github.com/hrsh7th/cmp-cmdline", name = "cmp-cmdline" },
  { src = "https://github.com/hrsh7th/cmp-path", name = "cmp-path" },
  { src = "https://github.com/andersevenrud/cmp-tmux", name = "cmp-tmux" },
})

vim.pack.add({
  { src = "https://github.com/rafamadriz/friendly-snippets", name = "friendly-snippets" },
  { src = "https://github.com/saadparwaiz1/cmp_luasnip", name = "cmp_luasnip" },
})

vim.pack.add({
  { src = "https://github.com/echasnovski/mini.pairs", name = "mini.pairs" },
  { src = "https://github.com/aserowy/tmux.nvim", name = "tmux.nvim" },
  { src = "https://github.com/echasnovski/mini.clue", name = "mini.clue" },
  { src = "https://github.com/echasnovski/mini.surround", name = "mini.surround" },
  { src = "https://codeberg.org/trevorhauter/gitportal.nvim", name = "gitportal.nvim" },
  { src = "https://github.com/brianhuster/live-preview.nvim", name = "live-preview.nvim" },
})

require("mini.sessions").setup()
require("config.oil")
require("config.colorscheme")
require("config.lualine")
require("git-conflict").setup({})
require("im_select").setup({})
require("config.csvview")
require("config.treesitter")
require("config.lsp")

require("config.aerial")
require("ts-comments").setup()
require("config.gitsigns")
require("fidget").setup({})
require("config.zen")
require("tsc").setup({
  flags = {
    incremental = true,
  },
})
require("config.dap")
require("dap-go").setup()
require("config.conform")
require("config.nvim-lint")
require("blame").setup()
require("config.telescope")
require("config.harpoon")
require("config.cmp")
require("config.luasnip")
require("mini.pairs").setup()
require("config.tmux")
require("config.mini-clue")
require("config.mini-surround")
require("gitportal").setup({
  always_include_current_line = true,
})
