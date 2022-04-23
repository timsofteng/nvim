require("null-ls").setup({
  sources = {
    -- require("null-ls").builtins.diagnostics.tsc,
    require("null-ls").builtins.formatting.prettier,
  },
  debug=true
})
