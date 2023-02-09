local M = { 'jose-elias-alvarez/null-ls.nvim' }

M.dependencies = {
	'nvim-lua/plenary.nvim'
}

M.config = function()
	local null_ls = require('null-ls')
	null_ls.setup({
		sources = {
			null_ls.builtins.diagnostics.luacheck.with({
				extra_args = { '--global', 'vim' }
			}),
			null_ls.builtins.diagnostics.flake8,
			null_ls.builtins.diagnostics.pylint,
			null_ls.builtins.diagnostics.mypy,
			null_ls.builtins.code_actions.shellcheck,
		}
	})
end

return M
