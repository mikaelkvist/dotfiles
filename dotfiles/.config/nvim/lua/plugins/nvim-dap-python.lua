local M  = { 'mfussenegger/nvim-dap-python' }

M.dependencies = {
	'mfussenegger/nvim-dap',
}

M.config = function()
	-- make sure this matches with Mason installation
	require('dap-python').setup('~/.local/share/nvim/mason/packages/debugpy/venv/bin/python')
end

return M
