return {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        local everforest = require("everforest")

        everforest.setup({
            background = "soft",
        })

        vim.cmd([[colorscheme everforest]])
    end,
}
