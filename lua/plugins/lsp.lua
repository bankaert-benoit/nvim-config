return {
	'neovim/nvim-lspconfig',
	event = { 'BufReadPre', 'BufNewFile' },
	dependencies = { 'nvim-mini/mini.nvim', 'williamboman/mason.nvim' },
	config = function()
		local on_attach = function(_, bufnr)
			local map = function(mode, lhs, rhs)
				vim.keymap.set(mode, lhs, rhs, { buffer = bufnr, silent = true })
			end
		
			-- Navigation
			map("n", "gd", vim.lsp.buf.definition)
			map("n", "gD", vim.lsp.buf.declaration)
			map("n", "gi", vim.lsp.buf.implementation)
			map("n", "gr", vim.lsp.buf.references)

			-- Hover / actions
			map("n", "K", vim.lsp.buf.hover)
			map("n", "<leader>rn", vim.lsp.buf.rename)
			map("n", "<leader>ca", vim.lsp.buf.code_action)

		end

		-- ======================
		-- Diagnostics sobres
		-- ======================
		vim.diagnostic.config({
			float = { border = "single" },
			signs = true,
			underline = true,
			update_in_insert = false,
		})

		-- ======================
		-- Root directory par défaut pour fichiers isolés
		-- ======================
		local root_cwd = function()
			return vim.fn.getcwd()
		end

		local mason_lsp = require("mason-lspconfig")

		-- ======================
		-- Setup LSP pour tous les serveurs installés
		-- ======================
		for _, server in ipairs(mason_lsp.get_installed_servers()) do
			-- Définir la configuration du serveur
			vim.lsp.config[server] = {
				on_attach = on_attach,
				root_dir = root_cwd,
				settings = server == "lua_ls" and {
					Lua = {
						diagnostics = { globals = { "vim" } },
						workspace = { library = vim.api.nvim_get_runtime_file("", true) },
					},
				} or nil,
			}
			vim.lsp.enable(server)
			-- -- Activer le serveur sur tous les buffers existants (si filetype correspond)
			-- local clients = vim.lsp.get_clients({ name = server })
			-- if #clients == 0 then
			-- 	vim.lsp.enable(server)
			-- end
		end

		-- ======================
		-- Auto-attach LSP sur tous les buffers ouverts ou nouveaux
		-- ======================
		vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
			callback = function(args)
				local buf = args.buf
				local ft = vim.bo[buf].filetype
				
				for _, server in ipairs(mason_lsp.get_installed_servers()) do
					local cfg = vim.lsp.config[server]
					if not cfg then goto continue end

					-- Vérifie si le serveur est compatible avec le filetype
					local filetypes = cfg.filetypes or {}
					if #filetypes == 0 or vim.tbl_contains(filetypes, ft) then
						-- Si aucun client attaché → active le serveur
						if #vim.lsp.get_clients({ bufnr = buf }) == 0 then
							vim.lsp.enable(server, buf)
						end
					end

					::continue::
				end
			end
		})

	end,
}
