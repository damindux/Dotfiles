return {
    'stevearc/oil.nvim',
    dependencies = {
        'nvim-tree/nvim-web-devicons'
    },
    config = function()
        local oil = require("oil")

        oil.setup()

        local keymap = vim.keymap

        keymap.set("n", "<leader>ee", "<cmd>Oil<CR>", { desc = "Toggle file explorer" }) -- toggle file explorer
    end,
}
