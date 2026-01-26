return {
  filetypes = {
    -- TypeScript / JavaScript
    "typescript",
    "javascript",

    -- Angular
    "typescript.angular",
    "html",
    "scss",
    "css",

    -- React 
	  "typescriptreact",
    "javascriptreact",
  },

  root_dir = vim.fn.getcwd,

  settings = {
    typescript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayParameterNameHintsWhenArgumentMatchesName = false,
        includeInlayFunctionParameterTypeHints = true,
        includeInlayVariableTypeHints = true,
        includeInlayPropertyDeclarationTypeHints = true,
        includeInlayFunctionLikeReturnTypeHints = true,
        includeInlayEnumMemberValueHints = true,
      },
    },
    javascript = {
      inlayHints = {
        includeInlayParameterNameHints = "all",
        includeInlayFunctionParameterTypeHints = true,
      },
    },
  },
}
