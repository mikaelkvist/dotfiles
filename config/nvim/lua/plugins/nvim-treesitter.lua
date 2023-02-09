local M = { 'nvim-treesitter/nvim-treesitter' }

M.opts = {
	ensure_installed = { "c", "cpp", "python", "bash", "lua", "help", "fish" },
	sync_install = true,
	auto_install = false
}

return M


