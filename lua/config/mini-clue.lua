local miniclue = require("mini.clue")
miniclue.setup({
	triggers = {
		-- Leader triggers
		{ mode = "n", keys = "<Leader>" },
		{ mode = "x", keys = "<Leader>" },

		-- Built-in completion
		{ mode = "i", keys = "<C-x>" },

		-- `g` key
		{ mode = "n", keys = "g" },
		{ mode = "x", keys = "g" },

		-- Marks
		{ mode = "n", keys = "'" },
		{ mode = "n", keys = "`" },
		{ mode = "x", keys = "'" },
		{ mode = "x", keys = "`" },

		-- Registers
		{ mode = "n", keys = '"' },
		{ mode = "x", keys = '"' },
		{ mode = "i", keys = "<C-r>" },
		{ mode = "c", keys = "<C-r>" },

		-- Window commands
		{ mode = "n", keys = "<C-w>" },

		-- `z` key
		{ mode = "n", keys = "z" },
		{ mode = "x", keys = "z" },

		-- `z` key
		{ mode = "n", keys = "[" },
		{ mode = "n", keys = "]" },
	},

	clues = {
		{ mode = "n", keys = "<Leader>b", desc = "+Buffers" },
		{ mode = "n", keys = "<Leader>l", desc = "+LSP" },
		{ mode = "n", keys = "<Leader>g", desc = "+Git" },
		{ mode = "n", keys = "<Leader>d", desc = "+Debug" },
		{ mode = "n", keys = "<Leader>q", desc = "+QuickFix" },
		{ mode = "n", keys = "<Leader>p", desc = "+Project" },
		{ mode = "n", keys = "<Leader>c", desc = "+Copy" },
		{ mode = "n", keys = "<Leader>w", desc = "+Write" },
		{ mode = "n", keys = "<Leader>?", desc = "+Help" },
		{ mode = "n", keys = "<Leader>m", desc = "+Marks" },
		-- Enhance this by adding descriptions for <Leader> mapping groups
		miniclue.gen_clues.builtin_completion(),
		miniclue.gen_clues.g(),
		miniclue.gen_clues.marks(),
		miniclue.gen_clues.registers(),
		miniclue.gen_clues.windows(),
		miniclue.gen_clues.z(),
	},
})
