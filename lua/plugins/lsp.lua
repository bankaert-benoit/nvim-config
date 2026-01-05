return {
	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		dependencies = { "mason.nvim" },
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		dependencies = { "mason.nvim", "mason-lspconfig.nvim" },
		config = function()
			local lspconfig = require("lspconfig")

			local servers = { "ts_ls", "lua_ls" }

			for _, lsp in ipairs(servers) do
				lspconfig[lsp].setup({
					on_attach = function(client, bufnr)
						local bufmap = function(mode, lhs, rhs)
							vim.keymap.set(bufnr, mode, lhs, rhs, { noremap = true, silent = true })
						end

						bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
						bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
						bufmap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
						bufmap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
						bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
					end,
				})
			end
		end,
	},
}
