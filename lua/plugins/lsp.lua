return {
	{
		"williamboman/mason.nvim",
		name = "Mason",
		config = function ()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		name = "Mason LspConfig",
		config = function ()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls" }
			})
		end
	},
	{
		"neovim/nvim-lspconfig",
		name = "Nvim LspConfig",
		config = function ()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "Show diagnostic" })
		end
	}
}
