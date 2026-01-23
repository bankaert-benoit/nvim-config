local modules = { 
	{ name = 'pairs', config = {} }, 
	{ 
		name = 'completion', 
		config = {
			delay = { completion = 100 },
			window = {
				info = { border = 'single' },
				signature = { border = 'single' },
			},
		},
	},
	{ name = 'tabline', config = {} },
	{ name = 'statusline', config = {} }, 
	{ name = 'starter', config = {} }, 
	{ name = 'indentscope', config = {} }, 
	{ name = 'surround', config = {} }, 
	{ name = 'basics', config = {} },
};

return {
	{
		'nvim-mini/mini.nvim',
		version = false,
		config = function()
			for _, module in ipairs(modules) do
				require('mini.' .. module.name).setup(module.setup);
			end
			vim.cmd.colorscheme('minispring');	
		end,
	},
};
