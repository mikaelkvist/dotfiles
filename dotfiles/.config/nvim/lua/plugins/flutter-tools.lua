local M = { 'akinsho/flutter-tools.nvim' }

M.lazy = false

M.dependencies = {
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope.nvim',
}

M.config = function()
	require('flutter-tools').setup {
		debugger = {
			enabled = false,
			run_via_dap = false,
		}
	}
	require("telescope").load_extension("flutter")
end

M.keys = {
	{ '<leader>hr', '<cmd>FlutterRun<cr>', desc = 'Flutter run project' },
	{ '<leader>hq', '<cmd>FlutterQuit<cr>', desc = 'Flutter kill running project' },
	{ '<leader>he', '<cmd>FlutterEmulators<cr>', desc = 'Flutter pick emulator to start' },
	{ '<leader>hdt', '<cmd>FlutterOpenDevTools<cr>', desc = 'Flutter open dev tools' },
	{ '<leader>hvd', '<cmd>FlutterVisualDebug<cr>', desc = 'Flutter toggle visual debug' },
	{ '<leader>ht', '<cmd>FlutterOutlineToggle<cr>', desc = 'Flutter toggle outline' },
	{ '<leader>hf', '<cmd>Telescope flutter commands<cr>', desc = 'Show flutter related commands in telescope' },
}

return M
