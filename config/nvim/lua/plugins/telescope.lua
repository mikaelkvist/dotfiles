local M = { 'nvim-telescope/telescope.nvim' }

M.dependencies = {
	'nvim-lua/plenary.nvim',
	'nvim-telescope/telescope-ui-select.nvim'
}

M.config = function()
	local telescope = require('telescope')
	local actions = require('telescope.actions')

	-- https://github.com/nvim-telescope/telescope.nvim/issues/1048 
	local action_state = require('telescope.actions.state')
	local fzf_multi_select = function(prompt_bufnr)
	  local picker = action_state.get_current_picker(prompt_bufnr)
	  local num_selections = #picker:get_multi_selection()

	  if num_selections > 1 then
		for _, entry in ipairs(picker:get_multi_selection()) do
		  vim.cmd(string.format("%s %s", ":e!", entry.value))
		end
		vim.cmd('stopinsert')
	  else
		actions.file_edit(prompt_bufnr)
	  end
	end

	require('telescope').setup({
		defaults = {
			mappings = {
				n = {
					["J"] = actions.select_horizontal,
					["L"] = actions.select_vertical,
					["A"] = actions.select_all,
					['<cr>'] = fzf_multi_select,
				},
			},
    		sorting_strategy = "ascending",
			layout_strategy = 'center',
			layout_config = {
				height = 15,
				width = 0.7,
				prompt_position = 'top',
				anchor = 'N',
				preview_cutoff = 0,
			},
			prompt_prefix = '> ',
		},
		pickers = {
		},
		extensions = {
		},
	})
	telescope.load_extension('ui-select')
end

M.keys = {
	-- search
	{ '<leader>ff', '<cmd>Telescope find_files<cr>', desc = 'Find files' },
	{ '<leader>fg', '<cmd>Telescope live_grep<cr>', desc = 'Live grep' },
	{ '<leader>fw', '<cmd>Telescope grep_string<cr>', desc = 'Grep string' },
	{ '<leader>fb', '<cmd>Telescope buffers<cr>', desc = 'Buffers' },
	{ '<leader>fh', '<cmd>Telescope help_tags<cr>', desc = 'Help tags' },
	{ '<leader>fc', '<cmd>Telescope colorscheme<cr>', desc = 'Browse colorschemes' },
	{ '<leader>fr', '<cmd>Telescope resume<cr>', desc = 'Resume' },
	{ '<leader>fm', '<cmd>Telescope marks<cr>', desc = 'Marks' },

	-- lsp
	{ '<leader>gs', '<cmd>Telescope lsp_dynamic_workspace_symbols<cr>', desc = 'Dynamic workspace symbols' },
	{ '<leader>gz', '<cmd>Telescope lsp_document_symbols<cr>', desc = 'Document symbols' },
	{ '<leader>gr', '<cmd>Telescope lsp_references<cr>', desc = 'References' },
	{ '<leader>gd', '<cmd>Telescope lsp_definitions<cr>', desc = 'Definitions' },
	{ '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', desc = 'Declarations' },
	{ '<leader>gi', '<cmd>Telescope lsp_implementations<cr>', desc = 'Implementations' },
	{ '<leader>gt', '<cmd>Telescope lsp_type_definitions<cr>', desc = 'Type definitions' },
}

M.lazy = false

return M
