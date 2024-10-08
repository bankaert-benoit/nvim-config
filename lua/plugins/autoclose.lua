return {
	{
		"m4xshen/autoclose.nvim",
		name = "AutoClose",
		opts = {
			keys = {
				["("] = { escape = false, close = true, pair = "()" },
				["{"] = { escape = false, close = true, pair = "{}" },
				["["] = { escape = false, close = true, pair = "[]" },
				["'"] = { escape = false, close = true, pair = "''" },
				['"'] = { escape = false, close = true, pair = '""' },
				["`"] = { escape = false, close = true, pair = "``" },
			},
			options = {
				disabled_filetypes = { "text" },
				disable_when_touch = false,
				touch_regex = "[%w(%[{]",
				pair_spaces = true,
				auto_indent = true,
				disable_command_mode = false,
			},
		},
	},
	{
		"alvan/vim-closetag",
		name = "Html AutoCloseTag",
	},
}
