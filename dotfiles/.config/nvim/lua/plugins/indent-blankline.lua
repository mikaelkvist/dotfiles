local M = { 'lukas-reineke/indent-blankline.nvim' }

M.config = function()
	require("indent_blankline").setup {
		show_end_of_line = true,
		space_char_blankline = " ",
	}
	vim.opt.list = true
	vim.opt.listchars:append "space:•"
	vim.opt.listchars:append "tab:→ "
	vim.opt.listchars:append "eol:↴"
end

return M
