local gotestCfg = { -- Specify configuration
	testify_enabled = true,
}

require("neotest").setup({
	status = { enabled = false, virtual_text = true },
	output = { enabled = true, open_on_run = true },
	output_panel = { enabled = true },
	-- adapters = {
	-- 	require("neotest-golang")(gotestCfg), -- Apply configuration
	-- },
})
