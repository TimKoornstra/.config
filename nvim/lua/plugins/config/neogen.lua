return {
    setup = function()
        vim.keymap.set("n", "<leader>gd", "<cmd>Neogen<cr>", { desc = "Neogen" })
    end,
    config = function()
        require("neogen").setup {
            snippet_engine = "luasnip",
            enabled = true,
            languages = {
                python = {
                    template = {
                        annotation_convention = "numpydoc"
                        }
                },
            }
        }
    end,
    requires = "nvim-treesitter/nvim-treesitter",
}
