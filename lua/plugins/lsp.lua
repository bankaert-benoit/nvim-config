local SERVERS = { "lua_ls", "rust_analyzer" }

return {
	{
		"williamboman/mason.nvim",
		name = "Mason",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		name = "Mason LspConfig",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = SERVERS,
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		name = "Nvim LspConfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" }
						}
					}
				}
			})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show diagnostic" })
		end,
	},
}
