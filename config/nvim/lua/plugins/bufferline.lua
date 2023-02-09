local M = { 'akinsho/bufferline.nvim' }

M.lazy = false

M.opts = {
	options = {
		separator_style = 'padded',
		diagnostics = 'nvim_lsp',
		diagnostics_indicator = function(count, level)
			if level:match("error") then
				return " " .. "" .. " " .. count
			end
			return " " .. "" .. " " .. count
		end,
	}
}

M.keys = {
	{ '<TAB>', '<cmd>BufferLineCycleNext<cr>', desc = 'Go to next tab'},
	{ '<S-TAB>', '<cmd>BufferLineCyclePrev<cr>', desc = 'Go to previous tab'},
	{ '<leader>w', '<cmd>bd!<cr>', desc = 'Close tab'},
}

return M


