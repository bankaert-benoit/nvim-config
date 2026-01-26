return {
  "nvim-treesitter/nvim-treesitter",
	branch = "master",
  dependencies = { 'nvim-mini/mini.nvim' },
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "lua",
        "typescript",
        "javascript",
        "html",
        "css",
        "scss",
        "json",
      },

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      -- On désactive volontairement tout le reste
      indent = { enable = false },
      incremental_selection = { enable = false },
      textobjects = { enable = false },
    })

		vim.cmd([[
			hi link @keyword Keyword
			hi link @function Function
			hi link @type Type
			hi link @variable Identifier
			hi link @constant Constant
			hi link @string String
			hi link @comment Comment
		]])
  end,
}
