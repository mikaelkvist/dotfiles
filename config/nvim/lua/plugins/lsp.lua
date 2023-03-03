local M = { 'neovim/nvim-lspconfig' }

M.dependencies = {
	'hrsh7th/nvim-cmp',
	'hrsh7th/cmp-nvim-lsp',
	-- { 'folke/neoconf.nvim', config = true },
	{ 'folke/neodev.nvim', config = true },
	{ 'SmiteshP/nvim-navic' },
}

M.init = function()
	vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(
		vim.lsp.handlers.hover, {
			border = 'rounded',
	})
end

M.config = function()
	local lspconfig 	= require('lspconfig')
	local caps			= require('cmp_nvim_lsp').default_capabilities()
	local lsp_defaults  = lspconfig.util.default_config
	local navic = require('nvim-navic')
	require('lspconfig.ui.windows').default_options.border = 'rounded'

	lsp_defaults.capabilities = vim.tbl_deep_extend('force', lsp_defaults.capabilities, caps)

	local on_attach = function (client, bufnr)
		if client.server_capabilities.documentSymbolProvider then
			navic.attach(client, bufnr)
		end
	end

	lspconfig.lua_ls.setup({
		capabilities = lsp_defaults.capabilities,
		on_attach = on_attach,
		settings = {
			Lua = {
				completion = {
					callSnippet = 'Replace',
				},
				diagnostics = {
					globals = { 'vim' }
				},
				workspace = {
					checkThirdParty = false,
				}
			},
		}
	})

	lspconfig.clangd.setup({
		capabilities = lsp_defaults.capabilities,
		on_attach = on_attach,
	})
	lspconfig.pyright.setup({
		capabilities = lsp_defaults.capabilities,
		on_attach = function(client, bufnr)
			client.server_capabilities.completionProvider = false
			on_attach(client, bufnr)
		end,
	})
	lspconfig.bashls.setup{}
end

M.keys = {
	{ '<leader>h', '<cmd>lua vim.lsp.buf.hover()<cr>', desc = 'Open float' },
}

return M
