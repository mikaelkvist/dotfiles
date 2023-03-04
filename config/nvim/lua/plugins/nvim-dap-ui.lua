local M = { 'rcarriga/nvim-dap-ui', tag = "v2.6.0" }

M.dependencies = {
	'mfussenegger/nvim-dap',
}

M.config = function()
	local dap, dapui = require("dap"), require("dapui")
	dapui.setup({
		controls = {
			enabled = false
		}
	})

	dap.listeners.after.event_initialized["dapui_config"] = function()
	  dapui.open({})
	end
	dap.listeners.before.event_terminated["dapui_config"] = function()
	  dapui.close({})
	end
	dap.listeners.before.event_exited["dapui_config"] = function()
	  dapui.close({})
	end
end

M.keys = {
	{ '<leader>dd', '<cmd>lua require("dapui").toggle()<cr>', desc = "Toggle Dap" },
	{ '<leader>de', '<cmd>lua require("dapui").eval()<cr>', desc = 'Dap eval' },
	{ '<leader>dh', '<cmd>lua require("dap.ui.widgets").hover()<cr>', desc = 'Dap hover' },
}

M.lazy = false

return M
