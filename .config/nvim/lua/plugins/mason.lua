local M = { 'williamboman/mason.nvim' }

M.dependencies = {
	{ 'williamboman/mason-lspconfig.nvim', config = {
		ensure_installed = { "sumneko_lua", "clangd", "pyright", "bashls" },
		automatic_installation = true,
	}},
	{ "jay-babu/mason-nvim-dap.nvim", config = {
		ensure_installed = { "bash-debug-adapter", "cpptools", "debugpy" },
		automatic_installation = true,
	}}
}

M.config = {
	ui = {
		border = 'rounded'
	}
}

return M
