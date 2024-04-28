local M = { 'dart-lang/dart-vim-plugin' }

M.lazy = false

M.keys = {
	{ '<leader>df', '<cmd>DartFmt<cr>', desc = 'Dart Format'},
}
return M
