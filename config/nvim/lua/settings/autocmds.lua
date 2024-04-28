local group = vim.api.nvim_create_augroup("dapui-winbar", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = 'dapui*',
	callback = function() vim.wo.winbar = '%=%f' end,
})
vim.api.nvim_create_autocmd("FileType", {
	group = group,
	pattern = 'dap-repl',
	callback = function() vim.wo.winbar = '%=DAP Read-Eval-Print Loop' end,
})

local dart_group = vim.api.nvim_create_augroup("dart", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = dart_group,
	pattern = "dart",
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end
})

local yaml_group = vim.api.nvim_create_augroup('yaml', { clear = true })
vim.api.nvim_create_autocmd("FileType", {
	group = yaml_group,
	pattern = "yaml",
	callback = function()
		vim.opt_local.shiftwidth = 2
		vim.opt_local.tabstop = 2
	end
})


vim.cmd([[highlight SpaceError ctermbg=DarkRed guibg=DarkRed]])
vim.cmd([[autocmd ColorScheme * highlight SpaceError ctermbg=DarkRed guibg=DarkRed]])
vim.cmd([[autocmd BufWinEnter * match SpaceError /\s\+\%#\@<!$/]])
vim.cmd([[autocmd InsertEnter * match SpaceError /\s\+\%#\@<!$/]])
vim.cmd([[autocmd InsertLeave * match SpaceError /\s\+$/]])
-- vim.cmd([[BufWinLeave * call clearmatches()]])
