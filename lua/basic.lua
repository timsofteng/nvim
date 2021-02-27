-- vim.o/vim.wo/vim.bo helper
local function setopt(mode, opt, value)
  vim[mode][opt] = value
  if mode ~= 'o' then
    vim.o[opt] = value
  end
end
--ignore system locale
vim.cmd 'language messages C'

--fix npm watch issue
setopt ('o', 'backupcopy', 'yes')

-- Show tab completion window
setopt('o', 'completeopt', 'menuone,noinsert,noselect')

-- Ignore case if search string is all-lowercase
setopt('o', 'ignorecase', true)
setopt('o', 'smartcase', true)

-- -- Enable mouse support
setopt('o', 'mouse', 'a')

setopt('o', 'cursorline', true)

setopt('o', 'scrolloff', 5)

--temporary solution from resizing for tmux
vim.api.nvim_exec([[
  augroup foo
    autocmd!
    autocmd VimResized * wincmd =
  augroup END
]], false)
