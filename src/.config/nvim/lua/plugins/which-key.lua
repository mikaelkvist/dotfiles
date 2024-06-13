local M = { 'folke/which-key.nvim' }

M.opts = {
	window = {
		border = 'rounded',
	},
	layout = {
		align = 'center',
	},
}

M.keys = {
	{ '?', '<cmd>WhichKey<cr>', desc = 'Which-Key' },
}

M.lazy = false

return M
