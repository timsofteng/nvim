require("which-key").setup {
  window = {
    -- border = "single", -- none, single, double, shadow
    margin = { 1, 2, 2, 2 }, -- extra window margin [top, right, bottom, left]
  },
}
local wk = require("which-key")

wk.register({
  f = {
    name = "Telescope",
  },

  b = {
    name = "Buffers",
  },

  g = {
    name = "Git",
  },

  q = {
    name = "Quickfix",
  },

  c = {
    name = "Copy",
  },

  l = {
    name = "Lsp",
  },

}, { prefix = "<leader>" })
