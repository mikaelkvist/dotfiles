local M = { 'mfussenegger/nvim-dap' }

M.config = function()
	local dap = require("dap")

	dap.adapters.cppdbg = {
		id = 'cppdbg',
		type = 'executable',
		command = vim.fn.stdpath("data") .. '/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7',
	}
	dap.adapters.bashdb = {
		type = 'executable';
		command = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/bash-debug-adapter';
		name = 'bashdb';
	}

	dap.configurations.cpp = {
		{
			name = "Launch file",
			type = "cppdbg",
			request = "launch",
			program = function()
				return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
			end,
			cwd = '${workspaceFolder}',
			stopAtEntry = true,
			setupCommands = {
				{
					text = '-enable-pretty-printing',
					description =  'enable pretty printing',
					ignoreFailures = false
				},
			},
		},
	}

	dap.configurations.sh = {
		{
			type = 'bashdb';
			request = 'launch';
			name = "Launch file";
			showDebugOutput = true;
			pathBashdb = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir/bashdb';
			pathBashdbLib = vim.fn.stdpath("data") .. '/mason/packages/bash-debug-adapter/extension/bashdb_dir';
			trace = true;
			file = "${file}";
			program = "${file}";
			cwd = '${workspaceFolder}';
			pathCat = "cat";
			pathBash = "/bin/bash";
			pathMkfifo = "mkfifo";
			pathPkill = "pkill";
			args = {};
			env = {};
			terminalKind = "integrated";
		}
	}

	vim.api.nvim_set_hl(0, "red", { fg = "#ff0000" })
	vim.api.nvim_set_hl(0, "orange", { fg = "#C17D11" })

	vim.fn.sign_define('DapBreakpoint', {text='', texthl='red', linehl='', numhl=''})
	vim.fn.sign_define('DapBreakpointCondition', {text='', texthl='red', linehl='', numhl=''})
	vim.fn.sign_define('DapLogPoint', {text='', texthl='red', linehl='', numhl=''})
	vim.fn.sign_define('DapStopped', {text='', texthl='orange', linehl='', numhl=''})
	vim.fn.sign_define('DapBreakpointRejected', {text='🛑', texthl='', linehl='', numhl=''})
end

M.keys = {
	{ '<leader>dc', '<cmd>DapContinue<cr>', desc = 'Continue' },
	{ '<leader>ds', '<cmd>DapStepOver<cr>', desc = 'Step Over' },
	{ '<leader>di', '<cmd>DapStepInto<cr>', desc = 'Step Into' },
	{ '<leader>do', '<cmd>DapStepOut<cr>', desc = 'Step Out' },
	{ '<leader>dt', '<cmd>lua require("dap").toggle_breakpoint()<cr>', desc = 'Toggle breakpoint' },
	{ '<leader>dk', '<cmd>lua require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: "))<cr>', desc = 'Breakpoint Conditional' },
	{ '<leader>dl', '<cmd>lua require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: "))<cr>', desc = 'Log message' },
	{ '<leader>dx', '<cmd>DapTerminate<cr>', desc = 'Terminate' },
	{ '<leader>dr', '<cmd>DapRestartFrame<cr>', desc = 'Restart Frame' },
}

return M
