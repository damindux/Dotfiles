return {
    'kepano/flexoki-neovim',
    name = 'flexoki',
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("flexoki-dark")

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end
}
