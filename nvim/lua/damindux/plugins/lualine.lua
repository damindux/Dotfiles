return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local luaLine = require("lualine")

        luaLine.setup({
            options = {
                theme = "molokai"
            }
        })
    end,
}
