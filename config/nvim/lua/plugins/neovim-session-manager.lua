local M = { 'Shatur/neovim-session-manager' }

M.dependencies = {
	"nvim-lua/plenary.nvim",
}

M.config = function()
	local session_manager = require('session_manager')
	local config = require('session_manager.config')
	local Path = require('plenary.path')
	session_manager.setup({
		autoload_mode = config.AutoloadMode.CurrentDir,
		sessions_dir = Path:new(vim.fn.stdpath('data'), 'neovim-session-manager'),
	})
end

return M
