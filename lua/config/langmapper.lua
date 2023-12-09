require('langmapper').setup({})

-- hack to prevent cmp lag on "i" and "a" and so on
require('langmapper').hack_get_keymap()
