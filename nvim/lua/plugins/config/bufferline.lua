require("bufferline").setup{
    options = {
        view = "multiwindow",
        numbers = function(opts)
            return string.format("%s", opts.ordinal)
        end,	
        modified_icon = "●",
        hover = {
            enabled = true,
            delay = 200,
            reveal = {'close'}
        },
        max_prefix_length = 5,
        tab_size = 18,
        diagnostics = "nvim_lsp",
        separator_style = { "|", "" },
        offsets = {
            {
                filetype = "NvimTree",
                text = "File Explorer",
                text_align = "center",
            },
        },
    },
}
