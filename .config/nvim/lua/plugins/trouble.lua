local M = { 'folke/trouble.nvim' }

M.dependencies = {
	'nvim-tree/nvim-web-devicons'
}

M.config = true

M.keys = {
	{ '<leader>tt', '<cmd>TroubleToggle<cr>', desc = 'Trouble' },
	{ '<leader>tw', '<cmd>TroubleToggle workspace_diagnostics<cr>', desc = 'Trouble workspace diagnostics' },
	{ '<leader>td', '<cmd>TroubleToggle document_diagnostics<cr>', desc = 'Trouble document diagnostics' },
	{ '<leader>tl', '<cmd>TroubleToggle loclist<cr>', desc = 'Trouble loclist' },
	{ '<leader>tq', '<cmd>TroubleToggle quickfix<cr>', desc = 'Trouble quickfix' },
	{ '<leader>tr', '<cmd>TroubleToggle lsp_references<cr>', desc = 'Trouble LSP references' },
}

return M
