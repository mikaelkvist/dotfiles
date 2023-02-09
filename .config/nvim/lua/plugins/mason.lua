local M = { 'williamboman/mason.nvim' }

M.dependencies = {
	{ 'williamboman/mason-lspconfig.nvim', config = {
		-- ensure_installed = { "sumneko_lua", "clangd", "pyright", "bashls" },
		-- ensure_installed = { "clangd", "pyright", "bashls" },
		automatic_installation = false,
	}},
	{ "jay-babu/mason-nvim-dap.nvim", config = {
		-- ensure_installed = { "bash-debug-adapter", "cpptools", "debugpy" },
		automatic_installation = false,
	}}
}

M.config = {
	ui = {
		border = 'rounded'
	}
}

return M
