require("dap")
require("dap-view").setup()

--to close hover window on q
vim.api.nvim_create_autocmd("FileType", {
	pattern = "dap-float",
	callback = function()
		vim.keymap.set("n", "q", "<Cmd>close!<CR>", { buffer = true, noremap = true, silent = true })
	end,
})

vim.keymap.set("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<cr>", { desc = "[c]ontinue" })
vim.keymap.set("n", "<leader>dC", function()
	require("dap").run_to_cursor()
end, { desc = "run to [C]ursor" })
vim.keymap.set("n", "<Leader>dS", "<cmd>lua require'dap'.terminate()<cr>", { desc = "[S]top" })
vim.keymap.set("n", "<Leader>dR", "<cmd>lua require'dap'.restart()<cr>", { desc = "[R]erstart" })
vim.keymap.set("n", "<Leader>d?", function()
	print(require("dap").status())
end, { desc = "status" })
vim.keymap.set("n", "<Leader>dP", "<cmd>lua require'dap'.pause()<cr>", { desc = "[p]ause" })
vim.keymap.set("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<cr>", { desc = "toggle [b]reakpoint" })
vim.keymap.set(
	"n",
	"<Leader>dB",
	"<cmd>lua require'dap'.clear_breakpoints()<cr>",
	{ desc = "all [B]reakpoints cleared" }
)
vim.keymap.set(
	"n",
	"<Leader>dL",
	"<cmd>lua require'dap'.list_breakpoints()<cr><cmd>copen<cr>",
	{ desc = "breakpoints [L]ist" }
)
vim.keymap.set("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<cr>", { desc = "step over" })
vim.keymap.set("n", "<Leader>dk", "<cmd>lua require'dap'.step_back()<cr>", { desc = "step back" })
vim.keymap.set("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<cr>", { desc = "step into" })
vim.keymap.set("n", "<Leader>dh", "<cmd>lua require'dap'.step_out()<cr>", { desc = "step out" })
vim.keymap.set("n", "<Leader>du", "<cmd>DapViewToggle<cr>", { desc = "[u]i" })
vim.keymap.set("n", "<Leader>dK", "<cmd>lua require('dap.ui.widgets').hover()<cr>", { desc = "hover var under cursor" })
