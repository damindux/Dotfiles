return {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        local everforest = require("everforest")
        local color = "everforest"

        everforest.setup()
        vim.cmd.colorscheme(color)

        -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        --
        -- vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = '#343331' })
        -- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })

        vim.api.nvim_set_hl(0, "StatusLine", { bg = "#FDF6E3", fg = "#343F44" })
        vim.api.nvim_set_hl(0, 'StatusLineNormal', { bg='#A7C080', fg='#343F44' })
        vim.api.nvim_set_hl(0, 'StatusLineInsert', { bg='#E67E80', fg='#343F44' })
        vim.api.nvim_set_hl(0, 'StatusLineVisual', { bg='#7FBBB3', fg='#343F44' })
        vim.api.nvim_set_hl(0, 'StatusLineReplace', { bg='#DBBC7F', fg='#343F44' })
    end,
}
