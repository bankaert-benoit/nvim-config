return {
	'neovim/nvim-lspconfig',
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = { 'nvim-mini/mini.nvim', 'williamboman/mason.nvim' },
	config = function ()
		vim.diagnostic.config({
			virtual_text = false,      -- pas de texte inline
			signs = true,              -- icônes dans la gutter
			underline = true,
			update_in_insert = false,
			float = {
				border = "rounded",
				source = "if_many",
			},
		})
	end
}
