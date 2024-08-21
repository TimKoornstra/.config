local keymap = vim.keymap

local function mappings()
    keymap.set({ "n", "v" }, "<Leader>tc", "<cmd>Telescope commands<cr>", { desc = "Show Commands" })
    keymap.set("n", "<leader>ts", "<cmd>Telescope current_buffer_fuzzy_find<cr>", { desc = "FZF current buffer" })
    keymap.set("n", "<leader>tf", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
    keymap.set("n", "<leader>tg", "<cmd>Telescope live_grep<cr>", { desc = "Live grep" })
    keymap.set("n", "<leader>to", "<cmd>Telescope oldfiles<cr>", { desc = "Old files" })
    keymap.set("n", "<leader>tb", "<cmd>Telescope buffers<cr>", { desc = "Buffers" })
    keymap.set("n", "<leader>th", "<cmd>Telescope help_tags<cr>", { desc = "Help tags" })
    keymap.set("n", "<leader>tC", "<cmd>Telescope colorscheme<cr>", { desc = "Colorscheme" })
    keymap.set("n", "<Leader>td", "<cmd>Telescope diagnostics<cr>", { desc = "Diagnostics" })
    keymap.set("n", "<Leader>tr", "<cmd>Telescope lsp_references<cr>", { desc = "References" })
    keymap.set("n", "<Leader>tD", "<cmd>Telescope lsp_definitions<cr>", { desc = "Definitions" })
end

mappings()
return {}
