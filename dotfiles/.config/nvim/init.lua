local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)

require('settings.options')
require("lazy").setup("plugins", {
	ui = {
		border = 'rounded',
	}
})
require('settings.keymaps')
require('settings.autocmds')
