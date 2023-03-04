local M = { 'j-hui/fidget.nvim' }

M.dependencies = {
	'neovim/nvim-lspconfig',
}

M.opts = {
	text = {
		spinner = 'dots',
	},
	window = {
		blend = 0,
	}
}

return M
