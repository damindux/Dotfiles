return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")

    gitsigns.setup({
        signcolumn = true,
        numhl = false,
    })

    vim.cmd("highlight GitSignsAdd guifg=#879a39 guibg=#1C1B1A")
    vim.cmd("highlight GitSignsChange guifg=#d0a215 guibg=#1C1B1A")
    vim.cmd("highlight GitSignsDelete guifg=#d14d41 guibg=#1C1B1A")

    vim.cmd("highlight LineNrAdd guifg=#879a39")
    vim.cmd("highlight LineNrChange guifg=#d0a215")
    vim.cmd("highlight LineNrDelete guifg=#d14d41")

    vim.cmd("highlight SignColumn guibg=NONE")
  end,
}
