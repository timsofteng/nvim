require("which-key").setup {
  window = {
    border = "single", -- none, single, double, shadow
    margin = { 1, 2, 1, 0 }, -- extra window margin [top, right, bottom, left]
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

  r = {
    name = "Spectre",
  },

  q = {
    name = "Quickfix List",
  },

}, { prefix = "<leader>" })
