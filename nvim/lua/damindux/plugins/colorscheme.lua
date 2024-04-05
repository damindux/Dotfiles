return {
    "tanvirtin/monokai.nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        local monokai = require("monokai")
        local color = "monokai"

        monokai.setup()
        vim.cmd.colorscheme(color)

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

        vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = '#4b5263' })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })

        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#f8f8f0", fg = "#000000" })
        vim.api.nvim_set_hl(0, 'StatusLineNormal', {bg='#000000', fg='#a6e22e'})
        vim.api.nvim_set_hl(0, 'StatusLineInsert', {bg='#000000', fg='#f92672'})
        vim.api.nvim_set_hl(0, 'StatusLineVisual', {bg='#000000', fg='#e6db74'})
        vim.api.nvim_set_hl(0, 'StatusLineReplace', {bg='#000000', fg='#e95678'})
    end,
}
