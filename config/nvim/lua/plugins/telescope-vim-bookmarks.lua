local M = { 'tom-anders/telescope-vim-bookmarks.nvim' }

M.dependencies = {
	{ 'MattesGroeger/vim-bookmarks',
		lazy = false,
		config = function()
			vim.g.bookmark_sign = '🔖'
			vim.g.bookmark_annotation_sign = '📕'
		end,
		keys = {
			{ '<leader>bb', '<cmd>BookmarkToggle<cr>', desc = 'Bookmark toggle' },
			{ '<leader>ba', '<cmd>BookmarkAnnotate<cr>', desc = 'Bookmark annotate' },
			{ '<leader>bd', '<cmd>BookmarkClear<cr>', desc = 'Clear buffer bookmarks' },
			{ '<leader>bD', '<cmd>BookmarkClearAll<cr>', desc = 'Clear all bookmarks' },
	}}
}

M.keys = {
	{ '<leader>fb', '<cmd>Telescope vim_bookmarks current_file<cr>', desc = 'Bookmarks current file' },
	{ '<leader>fB', '<cmd>Telescope vim_bookmarks all<cr>', desc = 'Bookmarks all' },
}

return M
