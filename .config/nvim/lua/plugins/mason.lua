local M = { 'williamboman/mason.nvim' }

M.dependencies = {
	{ 'williamboman/mason-lspconfig.nvim', config = true }
}

M.config = {
	ui = {
		border = 'rounded'
	}
}

return M
