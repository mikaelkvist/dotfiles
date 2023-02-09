local M = { 'theHamsta/nvim-dap-virtual-text' }

M.dependencies = {
    'mfussenegger/nvim-dap',
    'nvim-treesitter/nvim-treesitter',
}

M.opts = {
	-- enable_commands = true,
	highlight_new_as_changed = true,
	highlight_changed_variables = true,
	-- all_references = true,
}

return M
