local vimp = require('vimp')
vim.g.signify_disable_by_default=1
vimp.nnoremap('<Leader>gs', [[:SignifyToggle<cr>]])
vimp.nnoremap('<Leader>gh', [[:SignifyHunkDiff<cr>]])
vimp.nnoremap('<Leader>gu', [[:SignifyHunkUndo<cr>]])
