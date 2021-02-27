-- Auto install packer.nvim if not exists
local execute = vim.api.nvim_command
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

-- Only required if you have packer in your `opt` pack
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

return require('packer').startup(function()

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim'}


  --- Project and Sessions ---------------------------
  --sessions
  use { 'tpope/vim-obsession' }

  --UNIX command in vim
  use { 'tpope/vim-eunuch' }

  --history tree
  --use { 'mbbill/undotree' }
  -----------------------------------------------------



  --- File Tree ---------------------------
  use {  'lambdalisue/fern.vim' }
  use {  'lambdalisue/fern-git-status.vim' }
  --icons
  --use { 'lambdalisue/nerdfont.vim' }
  --use { 'lambdalisue/fern-renderer-nerdfont.vim' }
  --use { 'lambdalisue/glyph-palette.vim' }
  -----------------------------------------------------



  --- Buffers ---------------------------
  --closing buffer without closing window
  --Plug 'qpkorr/vim-bufkill'
  use { 'arithran/vim-delete-hidden-buffers' }
  use { 'szw/vim-maximizer' }
  -----------------------------------------------------



  --- LSP and Completion ---------------------------
  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-compe' }
  --map with lua
  use { 'svermeulen/vimpeccable' }
  -----------------------------------------------------



  --- Linters ---------------------------
  use { 'prettier/vim-prettier' }
  -----------------------------------------------------



  --- Search ---------------------------
  --finder in single buffer
  use { 'dyng/ctrlsf.vim' }
  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }
  -----------------------------------------------------



  --- Git ---------------------------
  use { 'lambdalisue/gina.vim' }
  use { 'mhinz/vim-signify' }
  -----------------------------------------------------



  --- Appearence ---------------------------
  --themes
  --use { 'lifepillar/vim-solarized8' }
  --Plug 'morhetz/gruvbox'
  use { 'lifepillar/vim-gruvbox8' }
  --Stautus bar
  use { 'rbong/vim-crystalline' }
  -----------------------------------------------------


  --- Appearence ---------------------------
  use { 'nvim-treesitter/nvim-treesitter' }
  -----------------------------------------------------




  --- Floating Code ---------------------------
  --commenting tool
  use { 'tomtom/tcomment_vim' }
  use { 'jiangmiao/auto-pairs' }
  use { 'alvan/vim-closetag' }
  --jump beetwen tags
  use { 'andymass/vim-matchup' }
  --surrounder
  use { 'tpope/vim-surround' }
  --repeat by "." for custom plugins
  use { 'tpope/vim-repeat' }
  --align
  use { 'junegunn/vim-easy-align' }
  -----------------------------------------------------


  ---- Writers work -----------------------------------
  use { 'junegunn/goyo.vim' }
  use { 'junegunn/limelight.vim' }
  --markdown
  --use { 'godlygeek/tabular' }
  --use { 'plasticboy/vim-markdown' }
  --use { 'iamcco/markdown-preview.nvim' }, { 'do': 'cd app && yarn install'   }
  -----------------------------------------------------

  ---- Snippets & Emmet -------------------------------
  --snippets
  use { 'hrsh7th/vim-vsnip' }
  use { 'hrsh7th/vim-vsnip-integ' }

  --emmet
  use { 'mattn/emmet-vim' }
  -----------------------------------------------------


  ---- Internal Terminal ------------------------------
  --Floating terminal
  --use { 'voldikss/vim-floaterm' }
  -----------------------------------------------------


  ---- Tmux Integration -------------------------------
  use { 'tmux-plugins/vim-tmux-focus-events' }
  use { 'christoomey/vim-tmux-navigator' }
  -----------------------------------------------------


  ---- Debug ------------------------------------------
  --use { 'tyru/capture.vim' }
  -----------------------------------------------------
  --use { 'takac/vim-hardtime' }
  --let g:hardtime_default_on = 1

end)
