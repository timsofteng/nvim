require("gitportal").setup({ always_include_current_line = true })

vim.keymap.set("n", "<leader>gp", ":GitPortal<cr>", { desc = "[p]ortal" })
