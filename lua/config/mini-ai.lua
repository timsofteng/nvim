local gen_spec = require("mini.ai").gen_spec
require("mini.ai").setup({
	custom_textobjects = {
		-- o = gen_spec.treesitter({ -- code block
		-- a = { "@block.outer", "@conditional.outer", "@loop.outer" },
		-- i = { "@block.inner", "@conditional.inner", "@loop.inner" },
		-- }),
		-- Function definition (needs treesitter queries with these captures)
		f = gen_spec.treesitter({ a = "@function.outer", i = "@function.inner" }),
		-- Function signature
		s = gen_spec.function_call(),
	},
})
