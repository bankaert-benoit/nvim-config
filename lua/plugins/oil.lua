return {
	"stevearc/oil.nvim",
	name = "Oil",
	opts = {
		keymaps = {
			["<backspace>"] = "actions.parent"
		},
		float = {
			preview_split = "right",
			border = "rounded",
		},
		view_options = {
			show_hidden = true,
		}
	},
	dependencies = {
		"echasnovski/mini.icons"
	}
}
