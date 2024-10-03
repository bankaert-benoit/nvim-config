local DEFAULT_CONFIG = { "prettier" }

return {
	"stevearc/conform.nvim",
	name = "Conform",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			typescript = DEFAULT_CONFIG,
			javascript = DEFAULT_CONFIG,
			css = DEFAULT_CONFIG,
			scss = DEFAULT_CONFIG,
			tsx = DEFAULT_CONFIG,
			jsx = DEFAULT_CONFIG,
			svelte = DEFAULT_CONFIG,
		},
	},
}
