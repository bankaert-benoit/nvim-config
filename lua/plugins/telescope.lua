local telescope = require('telescope')

return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim"
		},
		setup = function ()
			telescope.setup({
				extensions = {
					media_files = {
						filestypes = { "png", "webp", "svg", "jpg", "jpeg" }
					}
				}
			})
			telescope.load_extension('media_files')
		end
	},
	{
		"nvim-telescope/telescope-media-files.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-lua/popup.nvim",
			"nvim-telescope/telescope.nvim",
		},
	}
}
