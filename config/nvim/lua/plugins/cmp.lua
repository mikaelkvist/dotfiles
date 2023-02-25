local M = { 'hrsh7th/nvim-cmp' }

M.dependencies = {
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'L3Mon4D3/Luasnip',
	'saadparwaiz1/cmp_luasnip',
}
M.config = function()
	vim.o.completeopt = 'menuone,noselect'
	local cmp = require('cmp')
	cmp.setup({
		completion = {
			completeopt = 'menu,menuone,noinsert',
		},
		snippet = {
			expand = function(args)
				require('luasnip').lsp_expand(args.body)
			end
		},
		mapping = cmp.mapping.preset.insert({
			['<C-j>'] 	= cmp.mapping.scroll_docs(4),
			['<C-k>'] 	= cmp.mapping.scroll_docs(-4),
			['<C-l>'] 	= cmp.mapping.complete({}),
			['<S-Tab>'] = cmp.mapping.select_prev_item(),
			['<Tab>'] 	= cmp.mapping.select_next_item(),
			['<C-e>'] 	= cmp.mapping.abort(),
			['<cr>'] 	= cmp.mapping.confirm({
				behaviour 	= cmp.ConfirmBehavior.Replace,
				select 		= true,
			})
		}),
		sources = cmp.config.sources({
			{ name = 'nvim_lsp' },
			{ name = 'nvim_lua' },
			{ name = 'buffer' },
			{ name = 'path' },
			{ name = 'luasnip' },
		}),
		window = {
			documentation 	= cmp.config.window.bordered(),
			completion 		= cmp.config.window.bordered(),
		},
	})
	cmp.setup.cmdline({ '/', '?', ':' }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = 'cmdline' },
			{ name = 'buffer' },
			{ name = 'path' },
		}
	})
end


return M
