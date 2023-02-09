local M = { 'nvim-neo-tree/neo-tree.nvim' }

M.dependencies = {
	"nvim-lua/plenary.nvim",
	"nvim-tree/nvim-web-devicons",
	"MunifTanjim/nui.nvim",
}

M.opts = {
	close_if_last_window = true,
	filesystem = {
		follow_current_file = true,
	},
	window = {
		mappings = {
            ["L"] = "open_vsplit",
            ["J"] = "open_split",
		}
	},
}

M.keys = {
	{ "<leader>q", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
}

return M
