return {
	"stevearc/oil.nvim",
	name = "Oil",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
	config = function()
		require("oil").setup({
			keymaps = {
				["<backspace>"] = "actions.parent",
			},
		})

		vim.keymap.set("n", "<leader>e", "<CMD>Oil --float<CR>", { desc = "Open current directory" })
	end,
}
