return {
	"nvim-treesitter/nvim-treesitter",
	name = "Treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter/configs").setup({
			auto_install = true,
			highlight = { enabled = true },
			auto_indent = { enabled = true },
		})
	end,
}
