vim.keymap.set('v', '<', '<gv', {})
vim.keymap.set('v', '>', '>gv', {})

vim.keymap.set('n', '<leader>aq', '<cmd>bufdo bd<cr>', {})

vim.keymap.set('n', 'L', '<cmd>vsplit<cr>', {})
vim.keymap.set('n', 'J', '<cmd>split<cr>', {})
vim.keymap.set('n', '<leader>y', '"*y', {})

vim.keymap.set('n', 'F', '<cmd>Format<cr>', {})

vim.keymap.set('n', '<leader>gq', '<cmd>lua vim.lsp.buf.format({async = false})<cr>', {})

vim.keymap.set('n', '<leader>e', '<cmd>Lex<cr>', {})
vim.keymap.set('n', '<leader>w', '<cmd>qall!<cr>', {})
