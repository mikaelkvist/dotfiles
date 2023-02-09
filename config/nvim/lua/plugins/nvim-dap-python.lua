local M  = { 'mfussenegger/nvim-dap-python' }

M.dependencies = {
	'mfussenegger/nvim-dap',
}

M.config = function()
	require('dap-python').setup('~/.virtualenvs/debugpy/bin/python')
end

return M
