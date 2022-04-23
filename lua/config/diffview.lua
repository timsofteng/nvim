require'diffview'.setup {
  use_icons = false,
  key_bindings = {
    view = {
      ["gq"] = "<CMD>DiffviewClose<CR>",
    },
    file_panel = {
      ["gq"] = "<CMD>DiffviewClose<CR>",
    }
  }
}
