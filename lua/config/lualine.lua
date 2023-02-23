local colors = {
	black = "#282828",
	white = "#ebdbb2",
	red = "#fb4934",
	green = "#b8bb26",
	blue = "#83a598",
	yellow = "#fe8019",
	gray = "#a89984",
	darkgray = "#3c3836",
	lightgray = "#504945",
	inactivegray = "#7c6f64",
}

local gruvbox = {
	normal = {
		a = { bg = colors.lightgray, fg = colors.white },
		x = { bg = colors.lightgray },
		y = { bg = colors.lightgray, fg = colors.white },
		z = { bg = colors.lightgray, fg = colors.white },
	},
	insert = {
		a = { bg = colors.lightgray, fg = colors.white },
		x = { bg = colors.lightgray },
		y = { bg = colors.lightgray, fg = colors.white },
		z = { bg = colors.lightgray, fg = colors.white },
	},
	visual = {
		a = { bg = colors.lightgray, fg = colors.white },
		x = { bg = colors.lightgray },
		y = { bg = colors.lightgray, fg = colors.white },
		z = { bg = colors.lightgray, fg = colors.white },
	},
	replace = {
		a = { bg = colors.lightgray, fg = colors.white },
		x = { bg = colors.lightgray },
		y = { bg = colors.lightgray, fg = colors.white },
		z = { bg = colors.lightgray, fg = colors.white },
	},
	command = {
		-- a = { bg = colors.inactivegray, fg = colors.black },
		-- x = { bg = colors.inactivegray, fg = colors.black },
		-- y = { bg = colors.inactivegray, fg = colors.black },
		-- z = { bg = colors.inactivegray, fg = colors.black },
	},
	inactive = {
		a = { bg = colors.darkgray, fg = colors.gray },
		z = { bg = colors.darkgray, fg = colors.gray },
	},
}

require("lualine").setup({
	options = {
		icons_enabled = false,
		theme = gruvbox,
		component_separators = " ",
		section_separators = "",
		disabled_filetypes = {},
		always_divide_middle = true,
		globalstatus = false,
	},
	sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		-- lualine_x = {'diff', 'diagnostics'},
		lualine_x = { "diagnostics" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = { "filename" },
		lualine_b = {},
		lualine_c = {},
		lualine_x = {},
		lualine_y = {},
		lualine_z = { "location" },
	},
	tabline = {},
	extensions = {},
})
