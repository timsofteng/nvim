local telescope = require("telescope")
local actions = require("telescope.actions")
local action_layout = require("telescope.actions.layout")

local opts = { noremap = true, silent = true }
local findFileCmd = "find_command=rg,--files"

telescope.setup({
	defaults = {
		layout_strategy = "bottom_pane",
		sorting_strategy = "ascending",
		scroll_strategy = "cycle",
		borderchars = { "─", "│", "─", "│", "┌", "┐", "┘", "└" },
		layout_config = {
			prompt_position = "top",
			vertical = {
				mirror = true,
			},
		},
		mappings = {
			i = {
				["<C-q>"] = actions.smart_send_to_qflist + actions.open_qflist,
				["<C-o>"] = action_layout.toggle_preview,
			},
			n = {
				["<Esc>"] = false,
				["<C-c>"] = actions.close,
				["<C-o>"] = action_layout.toggle_preview,
			},
		},
		preview = {
			hide_on_startup = true,
		},
	},
	pickers = {
		buffers = {
			sort_lastused = true,
			mappings = {
				i = {
					["<C-d>"] = "delete_buffer",
				},
			},
		},
		live_grep = {
			preview = {
				hide_on_startup = false,
			},
		},
	},
})

vim.keymap.set(
	"n",
	"<leader>ff",
	"<cmd>Telescope find_files " .. findFileCmd .. " <cr>",
	vim.tbl_extend("error", { desc = "[F]ind [F]iles" }, opts)
)
vim.keymap.set(
	"n",
	"<leader>fc",
	"<cmd>Telescope live_grep<cr>",
	vim.tbl_extend("error", { desc = "[F]ind file's [C]ontent" }, opts)
)

vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<cr>", vim.tbl_extend("error", { desc = "[f]iles" }, opts))
vim.keymap.set(
	"n",
	"<leader>bb",
	"<cmd>Telescope buffers<cr>",
	vim.tbl_extend("error", { desc = "[b]uffers list" }, opts)
)
vim.keymap.set(
	"n",
	"<leader>:",
	"<cmd>Telescope command_history<cr>",
	vim.tbl_extend("error", { desc = "cmd history" }, opts)
)
vim.keymap.set("n", "<leader>mm", "<cmd>Telescope marks<cr>", vim.tbl_extend("error", { desc = "marks" }, opts))
vim.keymap.set(
	"n",
	"<leader>f,",
	"<cmd>Telescope resume<cr>",
	vim.tbl_extend("error", { desc = "resume telescope list" }, opts)
)
vim.keymap.set(
	"n",
	"<leader>qh",
	"<cmd>Telescope quickfixhistory<cr>",
	vim.tbl_extend("error", { desc = "qf [h]istory" }, opts)
)
vim.keymap.set("n", "<leader>??", "<cmd>Telescope help_tags<cr>", vim.tbl_extend("error", { desc = "help tags" }, opts))
