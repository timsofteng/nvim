local compilers = {
  go="compiler go",
}

for fileType, command in pairs(compilers) do
  vim.api.nvim_create_autocmd({"FileType"}, {
    pattern = fileType,
    command = command,
  })
end
