return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")

    gitsigns.setup({
        signcolumn = true,
        numhl = false,
    })

    vim.cmd("highlight GitSignsAdd guifg=#A7C080 guibg=#2D353B")
    vim.cmd("highlight GitSignsChange guifg=#DBBC7F guibg=#2D353B")
    vim.cmd("highlight GitSignsDelete guifg=#E67E80 guibg=#2D353B")

    vim.cmd("highlight LineNrAdd guifg=#A7C080")
    vim.cmd("highlight LineNrChange guifg=#DBBC7F")
    vim.cmd("highlight LineNrDelete guifg=#E67E80")

    vim.cmd("highlight SignColumn guibg=NONE")
  end,
}
