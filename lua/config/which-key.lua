--langmapper integration-----------
vim.o.timeout = true
vim.o.timeoutlen = 300

local lmu = require('langmapper.utils')
local view = require('which-key.view')
local execute = view.execute

-- wrap `execute()` and translate sequence back
view.execute = function(prefix_i, mode, buf)
  -- Translate back to English characters
  prefix_i = lmu.translate_keycode(prefix_i, 'default', 'ru')
  execute(prefix_i, mode, buf)
end
----------------------------------------

require("which-key").setup({
	window = {
		-- border = "single", -- none, single, double, shadow
		margin = { 1, 2, 2, 2 }, -- extra window margin [top, right, bottom, left]
	},
})
local wk = require("which-key")

wk.register({
	f = {
		name = "Telescope",
	},

	b = {
		name = "Buffers",
	},

	g = {
		name = "Git",
	},

	q = {
		name = "Quickfix",
	},

	c = {
		name = "Copy",
	},

	l = {
		name = "Lsp",
	},
	d = {
		name = "Debug",
		R = { "<cmd>lua require'dap'.run_to_cursor()<cr>", "Run to Cursor" },
		E = { "<cmd>lua require'dapui'.eval(vim.fn.input '[Expression] > ')<cr>", "Evaluate Input" },
		C = { "<cmd>lua require'dap'.set_breakpoint(vim.fn.input '[Condition] > ')<cr>", "Conditional Breakpoint" },
		U = { "<cmd>lua require'dapui'.toggle()<cr>", "Toggle UI" },
		b = { "<cmd>lua require'dap'.step_back()<cr>", "Step Back" },
		c = { "<cmd>lua require'dap'.continue()<cr>", "Continue" },
		d = { "<cmd>lua require'dap'.disconnect()<cr>", "Disconnect" },
		e = { "<cmd>lua require'dapui'.eval()<cr>", "Evaluate" },
		g = { "<cmd>lua require'dap'.session()<cr>", "Get Session" },
		h = { "<cmd>lua require'dap.ui.widgets'.hover()<cr>", "Hover Variables" },
		S = { "<cmd>lua require'dap.ui.widgets'.scopes()<cr>", "Scopes" },
		i = { "<cmd>lua require'dap'.step_into()<cr>", "Step Into" },
		o = { "<cmd>lua require'dap'.step_over()<cr>", "Step Over" },
		p = { "<cmd>lua require'dap'.pause.toggle()<cr>", "Pause" },
		q = { "<cmd>lua require'dap'.close()<cr>", "Quit" },
		r = { "<cmd>lua require'dap'.repl.toggle()<cr>", "Toggle Repl" },
		s = { "<cmd>lua require'dap'.continue()<cr>", "Start" },
		t = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle Breakpoint" },
		x = { "<cmd>lua require'dap'.terminate()<cr>", "Terminate" },
		u = { "<cmd>lua require'dap'.step_out()<cr>", "Step Out" },
	},
}, { prefix = "<leader>" })
