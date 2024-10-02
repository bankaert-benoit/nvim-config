local conform =  require("conform")

local augrp = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

augrp("Format", {clear = true})
autocmd("BufWritePre", {
	group =  "Format",
	pattern = {"*"},
	callback = function()
		conform.format()
	end
})
