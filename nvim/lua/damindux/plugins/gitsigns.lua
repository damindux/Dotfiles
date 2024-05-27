return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")

    gitsigns.setup({
        signcolumn = true,
        numhl = false,
    })

    vim.cmd("highlight GitSignsAdd guifg=#6BB56C guibg=NONE")
    vim.cmd("highlight GitSignsChange guifg=#FFFFFF guibg=NONE")
    vim.cmd("highlight GitSignsDelete guifg=#2E6357 guibg=NONE")

    vim.cmd("highlight LineNrAdd guifg=#6BB56C guibg=NONE")
    vim.cmd("highlight LineNrChange guifg=#FFFFFF guibg=NONE")
    vim.cmd("highlight LineNrDelete guifg=#2E6357 guibg=NONE")

    vim.cmd("highlight SignColumn guibg=NONE")
  end,
}
