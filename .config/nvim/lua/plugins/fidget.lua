local M = { 'j-hui/fidget.nvim' }

M.dependencies = {
	'neovim/nvim-lspconfig',
}

M.config = {
	text = {
		spinner = 'dots',
		-- spinner = 'dots_pulse',
	},
	window = {
		blend = 0,
		-- border = 'rounded',
	}
}

return M
