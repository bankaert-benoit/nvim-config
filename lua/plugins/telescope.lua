return {
	{
		"nvim-telescope/telescope.nvim",
		name = "Telescope",
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
		config = function()
			vim.keymap.set("n", "<leader>ff", "<CMD>Telescope find_files<CR>", { desc = "Find file" })
			vim.keymap.set("n", "<leader>fg", "<CMD>Telescope live_grep<CR>", { desc = "Find file" })
			vim.keymap.set("n", "<leader>fb", "<CMD>Telescope buffers<CR>", { desc = "Find file" })
			vim.keymap.set("n", "<leader>gd", "<CMD>Telescope lsp_definitions<CR>", { desc = "Show LSP definitions" })
			vim.keymap.set(
				"n",
				"<leader>gi",
				"<CMD>Telescope lsp_implementations<CR>",
				{ desc = "Show LSP implementations" }
			)
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "See available code action" })
		end,
	},
}
