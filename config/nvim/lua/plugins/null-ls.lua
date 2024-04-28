local M = {'jose-elias-alvarez/null-ls.nvim'}

M.dependencies = {'nvim-lua/plenary.nvim'}

M.config = function()
    local null_ls = require('null-ls')
    null_ls.setup({
        sources = {
            null_ls.builtins.diagnostics.luacheck.with({
                extra_args = {'--global', 'vim'}
            }), null_ls.builtins.diagnostics.flake8,
            null_ls.builtins.diagnostics.pylint,
            null_ls.builtins.diagnostics.mypy,
            null_ls.builtins.code_actions.shellcheck,
            null_ls.builtins.formatting.lua_format,
            null_ls.builtins.formatting.dart_format
        },
        -- on_attach = function(client, bufnr)
        --     if client.supports_method('textDocument/formatting') then
        --         vim.api.nvim_buf_create_user_command(bufnr, 'Format',
        --                                              function(_)
        --             -- vim.lsp.buf.format({
        --             --     bufnr = bufnr,
        --             --     filter = function(c)
        --             --         return c.name == "null-ls"
        --             --     end
        --             -- })
        --             vim.lsp.buf.formatting_sync()
        --             print("File formatted")
        --         end, {"Formatting current buffer with LSP"})
        --     end
        -- end
    })
end
return M
