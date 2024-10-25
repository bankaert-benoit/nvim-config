local augrp = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augrp("ShowLspHelp", { clear = true })
autocmd("CursorMovedI", {
	group = "ShowLspHelp",
	pattern = { "*" },
	callback = function()
		vim.lsp.buf.signature_help()
	end,
})
