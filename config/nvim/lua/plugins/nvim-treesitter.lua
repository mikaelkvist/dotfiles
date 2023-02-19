local M = { 'nvim-treesitter/nvim-treesitter' }

-- Lazy does not guess the setup name correctly, have to spec it manually
M.config = function()
	vim.opt.runtimepath:append("~/.local/share/nvim/nvim-treesitter")

	local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

	parser_configs.kotlin = {
		install_info = {
			url = "~/.local/share/nvim/nvim-treesitter/source/tree-sitter-kotlin",
			files = { "src/parser.c" },
		},
		filetype = "kt",
	}
	require('nvim-treesitter.configs').setup({
		ensure_installed = { "c", "cpp", "python", "bash", "lua", "help", "fish", "kotlin" },
		sync_install = true,
		auto_install = false,
		parser_install_dir = '~/.local/share/nvim/nvim-treesitter'
	})

end

return M


