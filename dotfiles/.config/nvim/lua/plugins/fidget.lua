local M = { 'j-hui/fidget.nvim' }

M.dependencies = {
	'neovim/nvim-lspconfig',
}

M.opts = {
    progress = {
        display = {
            progress_icon = {
                pattern = 'dots',
            },
        },
    },
    notification = {
        window = {
            winblend = 0,
        },
    },
}

return M
