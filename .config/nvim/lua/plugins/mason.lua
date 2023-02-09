local M = { 'williamboman/mason.nvim' }

M.dependencies = {
	{ 'williamboman/mason-lspconfig.nvim', opts = {
		-- ensure_installed = { "sumneko_lua", "clangd", "pyright", "bashls" },
		-- ensure_installed = { "clangd", "pyright", "bashls" },
		automatic_installation = false,
	}},
	{ "jay-babu/mason-nvim-dap.nvim", opts = {
		-- ensure_installed = { "bash-debug-adapter", "cpptools", "debugpy" },
		automatic_installation = false,
	}}
}

M.opts = {
	ui = {
		border = 'rounded'
	}
}

return M
