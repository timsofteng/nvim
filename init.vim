set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vim/vimrc
set completeopt=menuone,noinsert,noselect

" -- basic options
" -- require'basic'


" --plugin manager init
" --require'plugin-manager'
" --plugins configs
lua require'plugins.lsp'
lua require'plugins.compe'
lua require'plugins.treesitter'
lua require'plugins.telescope'
" --lua require'plugins.signify'

" -- map
" --require'map'
"
" --colorscheme
" --require'colorscheme'
