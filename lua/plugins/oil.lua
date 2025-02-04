return {
	"stevearc/oil.nvim",
	name = "Oil",
	opts = {
		keymaps = {
			["<backspace>"] = "actions.parent"
		},
		float = {
			preview_split = "right"
		}
	},
	dependencies = {
		"echasnovski/mini.icons"
	}
}
