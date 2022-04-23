--resp-nvim
local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()
parser_configs.http = {
  install_info = {
    url = "https://github.com/NTBBloodbath/tree-sitter-http",
    files = { "src/parser.c" },
    branch = "main",
  },
}

require'nvim-treesitter.configs'.setup {
  -- ensure_installed = "all",     -- one of "all", "language", or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
    disable = { },  -- list of language that will be disabled
  },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    enable = true,
  },
  -- not work good yet
  indent = {
    enable = true,
  },
  matchup = {
    enable = true,
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      node_incremental = ';',
      node_decremental = ',',
    },
  },
  autopairs = {enable = true}
}
