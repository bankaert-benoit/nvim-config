return {
	"stevearc/oil.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		require("oil").setup({
			show_hidden = true,
			columns = {"icon", "permissions", "size", "mtime"},
			keymaps = {
				["<CR>"] = "actions.select",
				["<C-s>"] = "actions.select_vsplit",
				["<backspace>"] = "actions.parent",
				["q"] = "actions.close",
			},
			view_options = {
				show_hidden = true,
			},
			use_default_keymaps = false,
		})
		vim.keymap.set(
			"n",
			"<leader>e",
			":Oil --float <CR>",
			{ noremap = true, silent = true, desc = "Open explorator" }
		)
	end,
}
