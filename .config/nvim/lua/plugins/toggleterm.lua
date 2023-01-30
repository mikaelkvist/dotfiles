local M = { 'akinsho/toggleterm.nvim' }

M.config = {
	shade_terminals = true,
	winbar = {
    enabled = true,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}

M.keys = {
	{ '<esc>', [[<C-\><C-n>]],  mode='t', desc='Escape terminal' },
}

M.lazy = false

return M
