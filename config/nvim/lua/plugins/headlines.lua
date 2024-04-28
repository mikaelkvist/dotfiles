M = {'lukas-reineke/headlines.nvim'}

M.dependencies = {"nvim-treesitter/nvim-treesitter"}

M.opts = {
    markdown = {
        headline_highlights = {
            "Headline1", "Headline2", "Headline3", "Headline4", "Headline5",
            "Headline6"
        },
        codeblock_highlight = "CodeBlock",
        dash_highlight = "Dash",
        quote_highlight = "Quote"
    }
}
return M
