return {
	{ 'folke/tokyonight.nvim', lazy=true },
	{ 'ellisonleao/gruvbox.nvim', lazy=false, config = function()
		vim.cmd.colorscheme 'gruvbox'
	end },
	{ 'ray-x/aurora', lazy=true, config = function()
		vim.g.aurora_italic = 1
		vim.g.aurora_transparent = 1
		vim.g.aurora_bold = 1
	end },
	{ 'AlexvZyl/nordic.nvim', lazy=true, config = function()
		require('nordic').setup({
			telescope = {
				-- Available styles: `classic`, `flat`.
				style = 'flat',
			},
			-- Enable bold keywords and operators.
			bold_keywords = true,
			-- Enable italicized comments.
			italic_comments = true,
			-- Enable general editor background transparency.
			transparent_bg = true,
			-- Override styling of any highlight group.
			-- (see next section for an example)
			override = {
			},
			cursorline = {
				bold = true,
				-- Avialable themes: 'dark', 'light'.
				theme = 'dark'
			}
		})
	end
	}
}
