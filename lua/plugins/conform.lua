local DEFAULT_CONFIG = { "prettier" }
local DEFAULT_PRETTIER_ARGS = {
	"--single-quote",
	"--bracket-same-line",
	"--end-of-line crlf",
}

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
			html = DEFAULT_CONFIG,
		},
		formatters = {
			prettier = {
				prepend_args = DEFAULT_PRETTIER_ARGS,
			},
		},
	},
}
