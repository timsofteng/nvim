local lualine = require('lualine')
lualine.options = {
  theme = 'gruvbox',
  section_separators = {'', ''},
  component_separators = {'', ''},
}

lualine.sections = {
  lualine_a = {  },
  lualine_b = {  },
  lualine_c = { { 'filename', full_path=true } },
  lualine_x = {  },
  lualine_y = {  },
  lualine_z = { 'location' },
}

lualine.inactive_sections = {
  lualine_a = {  },
  lualine_b = {  },
  lualine_c = { 'filename' },
  lualine_x = { 'location' },
  lualine_y = {  },
  lualine_z = {  }
}

lualine.status()
