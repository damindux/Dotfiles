return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")

    gitsigns.setup({
        signcolumn = true,
        numhl = false,
    })

    vim.cmd("highlight GitSignsAdd guifg=#a6e22e guibg=#000000")
    vim.cmd("highlight GitSignsChange guifg=#e5c07b guibg=#000000")
    vim.cmd("highlight GitSignsDelete guifg=#f92672 guibg=#000000")

    vim.cmd("highlight LineNrAdd guifg=#a6e22e")
    vim.cmd("highlight LineNrChange guifg=#e5c07b")
    vim.cmd("highlight LineNrDelete guifg=#f92672")

    vim.cmd("highlight SignColumn guibg=NONE")
  end,
}
