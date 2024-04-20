return {
    "kepano/flexoki-neovim",
    name = "flexoki",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        local flexoki = require("flexoki")
        local color = "flexoki-dark"

        flexoki.setup()
        vim.cmd.colorscheme(color)

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

        vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = '#343331' })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })

        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#CECDC3", fg = "#000000" })
        vim.api.nvim_set_hl(0, 'StatusLineNormal', { bg='#000000', fg='#879A39' })
        vim.api.nvim_set_hl(0, 'StatusLineInsert', { bg='#000000', fg='#D14D41' })
        vim.api.nvim_set_hl(0, 'StatusLineVisual', { bg='#000000', fg='#D0A215' })
        vim.api.nvim_set_hl(0, 'StatusLineReplace', { bg='#000000', fg='#CE5D97' })
    end,
}
