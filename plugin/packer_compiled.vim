" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tim/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["ctrlsf.vim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/ctrlsf.vim"
  },
  ["emmet-vim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/emmet-vim"
  },
  ["fern-git-status.vim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/fern-git-status.vim"
  },
  ["fern.vim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/fern.vim"
  },
  ["gina.vim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/gina.vim"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lualine\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-compe"] = {
    config = { "\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plugins.compe\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugins.lsp\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tim/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  sonokai = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/sonokai"
  },
  tcomment_vim = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/tcomment_vim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-closetag"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-closetag"
  },
  ["vim-delete-hidden-buffers"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-delete-hidden-buffers"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-easy-align"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-gruvbox8"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-gruvbox8"
  },
  ["vim-matchup"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-matchup"
  },
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-obsession"
  },
  ["vim-prettier"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-prettier"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-signify"] = {
    config = { "\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.signify\frequire\0" },
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vim-vsnip-integ"
  },
  vimpeccable = {
    loaded = true,
    path = "/home/tim/.local/share/nvim/site/pack/packer/start/vimpeccable"
  }
}

-- Config for: nvim-compe
try_loadstring("\27LJ\2\n-\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\18plugins.compe\frequire\0", "config", "nvim-compe")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.lualine\frequire\0", "config", "lualine.nvim")
-- Config for: telescope.nvim
try_loadstring("\27LJ\2\n1\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\22plugins.telescope\frequire\0", "config", "telescope.nvim")
-- Config for: nvim-treesitter
try_loadstring("\27LJ\2\n2\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\23plugins.treesitter\frequire\0", "config", "nvim-treesitter")
-- Config for: nvim-lspconfig
try_loadstring("\27LJ\2\n+\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\16plugins.lsp\frequire\0", "config", "nvim-lspconfig")
-- Config for: vim-signify
try_loadstring("\27LJ\2\n/\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\20plugins.signify\frequire\0", "config", "vim-signify")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
