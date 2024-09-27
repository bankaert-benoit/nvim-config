return {
	"folke/which-key.nvim",
	name = "Which Key",
	event = "VeryLazy",
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer local Keymaps (WhichKey)",
		}
	}
}
