return {
	{
		"nvim-telescope/telescope.nvim",
		name = "Telescope",
		dependencies = {
			{ "nvim-lua/plenary.nvim" }
		},
		config = function ()
			vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Find file" })
			vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Find file" })
			vim.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Find file" })
		end
	}
}
