require('telescope').setup{
    defaults = {
        vimgrep_arguments = {
          "rg",
          "-L",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
        },
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        layout_config = {
            horizontal = {
                preview_width = 0.75,
                results_width = 0.75,
            },
            vertical = {
                mirror = false,
            },
            width = 0.87,
            height = 0.87,
            preview_cutoff = 100,
        },
        prompt_prefix = "   ",
        selection_caret = "> ",
        entry_prefix = "  ",
        file_sorter = require("telescope.sorters").get_fuzzy_file,
        file_ignore_patterns = { "node_modules" },
        generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
        path_display = { "smart" },
        winblend = 0,
        border = {},
        color_devicons = true,
        set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,
        buffer_previewer_maker = require("telescope.previewers").buffer_previewer_maker,

        extensions = {
            file_browser = {
                auto_preview = true,
            },
        },
    },
    pickers = {
        diagnostics = {
            theme = "ivy",
            layout_strategy = "vertical",
            layout_config = {
                preview_height = 0.5,
                width = 0.9,
                height = 0.8,
                mirror = false,
            },
            border = true,
            previewer = true,
            preview_cutoff = 0,
        },
    },
}
