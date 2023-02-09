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
