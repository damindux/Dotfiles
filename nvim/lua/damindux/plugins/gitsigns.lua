return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local gitsigns = require("gitsigns")

    gitsigns.setup({
        signcolumn = false,
        numhl = true,
    })

    vim.cmd("highlight GitSignsAdd guibg=NONE")
    vim.cmd("highlight GitSignsChange guibg=NONE")
    vim.cmd("highlight GitSignsDelete guibg=NONE")

    vim.cmd("highlight GitSignsAddNr guibg=NONE")
    vim.cmd("highlight GitSignsChangeNr guibg=NONE")
    vim.cmd("highlight GitSignsDeleteNr guibg=NONE")

    vim.cmd("highlight LineNr guibg=NONE")
    vim.cmd("highlight LineNrAdd guibg=NONE")
    vim.cmd("highlight LineNrChange guibg=NONE")
    vim.cmd("highlight LineNrDelete guibg=NONE")

    vim.cmd("highlight SignColumn guibg=NONE")
  end,
}
