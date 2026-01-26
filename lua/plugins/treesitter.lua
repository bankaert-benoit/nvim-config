local ENSURE_INSTALLED = { "lua", "html", "css", "typescript", "javascript", "yaml", "svelte", "jsdoc", "java", "angular" }

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "master",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")
		configs.setup({
			ensure_installed = ENSURE_INSTALLED,
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
			incremental_selection = { enable = true },
		})
	end,
}
