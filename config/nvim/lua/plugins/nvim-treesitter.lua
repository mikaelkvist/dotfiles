local M = { 'nvim-treesitter/nvim-treesitter' }

-- Lazy does not guess the setup name correctly, have to spec it manually
M.config = function()
	vim.opt.runtimepath:append("~/.local/share/nvim/nvim-treesitter")

	local parser_configs = require('nvim-treesitter.parsers').get_parser_configs()

	parser_configs.c = {
		install_info = {
			url = "~/.local/share/nvim/nvim-treesitter/source/tree-sitter-c",
			files = { "src/parser.c" },
		},
		filetype = "c",
	}
	parser_configs.cpp = {
		install_info = {
			url = "~/.local/share/nvim/nvim-treesitter/source/tree-sitter-cpp",
			files = { "src/parser.c" },
		},
		filetype = "cpp",
	}
	parser_configs.python = {
		install_info = {
			url = "~/.local/share/nvim/nvim-treesitter/source/tree-sitter-python",
			files = { "src/parser.c" },
		},
		filetype = "py",
	}
	parser_configs.lua = {
		install_info = {
			url = "~/.local/share/nvim/nvim-treesitter/source/tree-sitter-lua",
			files = { "src/parser.c" },
		},
		filetype = "lua",
	}
	parser_configs.bash = {
		install_info = {
			url = "~/.local/share/nvim/nvim-treesitter/source/tree-sitter-bash",
			files = { "src/parser.c" },
		},
		filetype = "sh",
	}
	require('nvim-treesitter.configs').setup({
		ensure_installed = { "c", "cpp", "python", "lua", "bash" },
		sync_install = true,
		auto_install = false,
		parser_install_dir = '~/.local/share/nvim/nvim-treesitter'
	})

end

return M


