local vimp = require('vimp')
--map leader to space
vim.g.mapleader = ' '

-- Edit vimr configuration file
vimp.nnoremap('confe', [[:vs $HOME/.config/nvim/init.lua<cr>]])
-- Reload vims configuration file
vimp.nnoremap('confr', [[:source $HOME/.config/nvim/init.lua<cr>]])

-- "Disable ability change all letters to lowercase
-- "in visual mode by press "u"
-- xnoremap u <nop>
-- "search word in visual mode by predding "//"
-- vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
--
-- "disable highlighting by double Esc
-- nnoremap <Esc><Esc> :noh <CR>
--
-- "write with sudo 
-- command -nargs=0 SUw w !sudo tee %
-- '")
-- "

--for some plugins
vimp.nnoremap('<Leader>bc', [[:DeleteHiddenBuffers<cr>]])
vimp.nnoremap('<Leader>=', [[:Prettier<cr>]])
vimp.nnoremap('<Leader>z', [[:MaximizerToggle<cr>]])
vimp.nmap('<C-p>', [[:Fern . -reveal=% -drawer -toggle <CR>
]])
