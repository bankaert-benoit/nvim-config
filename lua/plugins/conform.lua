return  {
	"stevearc/conform.nvim",
	name = "Conform",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			['_'] = { "prettier" },
		}
	}
}
