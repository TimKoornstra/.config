local wk = require("which-key")

wk.setup {
    plugins = {
            marks = true,
            registers = true,
            spelling = {
                enabled = false,
            },
            presets = {
                operators = false,
                motions = false,
                text_objects = false,
                windows = true,
                nav = true,
                z = true,
                g = true,
            },
        },
        operators = { gc = "Comments" },
        key_labels = {},
        icons = {
            breadcrumb = "»",
            separator = "➜",
            group = "+",
        },
        window = {
            border = "rounded",
            position = "bottom",
            margin = { 1, 0, 1, 0 },
            padding = { 1, 1, 1, 1 },
            winblend = 0,
        },
        layout = {
            height = { min = 4, max = 25 },
            width = { min = 20, max = 50 },
            spacing = 3,
            align = "left",
        },
        ignore_missing = false,
        hidden = { "<silent>", "<cmd>", "<Cmd>", "<CR>", "call", "lua", "^:", "^ " },
        show_help = true,
}

local mappings = {
  D = "Toggle Git Differences",
  p = "Toggle Sidebar",
  c = {
    name = "Code Action",
    a = "Code Action",
  },
  g = { "General" },
  h = { "Git Signs" },
  r = {
    name = "Rename",
    n = "Rename"
  },
  t = { "Telescope" },
}

local opts = { prefix = "<leader>" }

wk.register(mappings, opts)

wk.register({
    K = {"LSP Hover Info"},
    ["<c-w>"] = {"Window"},
    
    
}, { prefix = "" })



