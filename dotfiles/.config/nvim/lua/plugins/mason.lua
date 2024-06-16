local M = { 'williamboman/mason.nvim' }

M.dependencies = {
	{ 'williamboman/mason-lspconfig.nvim', opts = {
		automatic_installation = false,
	}}
}

M.opts = {
	ui = {
		border = 'rounded'
	}
}

return M
