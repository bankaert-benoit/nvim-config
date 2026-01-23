return {
	{
		'williamboman/mason.nvim',
		cmd = "Mason",
		config = function()
			require('mason').setup();
		end,
	},
	{
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "ts_ls", "jsonls" }, -- LSP automatiques
      })
			vim.lsp.enable({ "lua_ls", "ts_ls", "jsonls" })
    end,
  },
}
