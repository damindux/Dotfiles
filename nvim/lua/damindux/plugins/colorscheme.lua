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
        vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#4b5263" })
        vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "none" })
    end,
}
