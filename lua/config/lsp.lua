local concattable = require("utils.concattable")

local lspservers = {
  "angularls",
  "cssls",
  "html",
  "lua_ls",
  "ts_ls",
	"svelte",
	"tailwindcss"
}

local function lsphandlers(lspconfig)
  local capabilities = require("cmp_nvim_lsp").default_capabilities()
  local on_attach = require("mapping.lsp")
  local opts = {
    on_attach = on_attach,
    capabilities = capabilities,
  }

  local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
  for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
  end

  return {
    function(servername)
      lspconfig[servername].setup(opts)
    end,
    ["lua_ls"] = function()
      lspconfig.lua_ls.setup {
        on_attach = on_attach,
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" }
            },
          }
        }
      }
    end,
		["angularls"] = function()
			lspconfig.angularls.setup {
				on_attach = on_attach,
				capabilities = capabilities,
				filetypes = { "typescript", "html", "typescriptreact", "typescript.tsx", "htmlangular" },
			}
		end,
  }
end

return {
  lspservers = concattable({ lspservers }),
  lsphandlers = lsphandlers
}
