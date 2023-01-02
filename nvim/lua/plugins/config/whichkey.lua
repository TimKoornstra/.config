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
        ["$"] = "Comment to EOL",
        ["<space>"] = "Toggle comment",
        ["A"] = "Append comment",
        ["b"] = "Align comment both",
        ["c"] = "Make comment",
        ["i"] = "Invert comment",
        ["l"] = "Align comment left",
        ["m"] = "Minimal comment",
        ["n"] = "Nested comment",
        ["s"] = "Sexy comment",
        ["u"] = "Uncomment",
        ["y"] = "Yank comment",
    },
    g = "General",
    h = "Git Signs",
    r = {
        name = "Rename",
        n = "Rename"
    },
    t = "Telescope",
}

local opts = { prefix = "<leader>" }

wk.register(mappings, opts)

wk.register({
    K = "LSP Hover Info",
    ["<c-w>"] = "Window",
    ["F"] = "Hop to previous character (incl.)",
    ["f"] = "Hop to next character (incl.)",
    ["T"] = "Hop to previous character (excl.)",
    ["t"] = "Hop to next character (excl.)",
    ["["] = "Previous special character",
    ["]"] = "Next special character",
    ["c"] = "Change",
    ["d"] = "Delete",
    g = {
        name = "Various search",
        d = "Go to definition",
        r = "Grep",
    },
    y = {
        name = "Add surrounding pair",
        S = "Around a motion (with newline)",
        s = "Around a motion",
    },
    ["z"] = "Miscellaneous",

}, { prefix = "", })

-- Hide some mappings

wk.register({
    ["<C-H>"] = "which_key_ignore",
    ["<C-J>"] = "which_key_ignore",
    ["<C-K>"] = "which_key_ignore",
    ["<C-L>"] = "which_key_ignore",
    ["<M-0>"] = "which_key_ignore",
    ["<M-1>"] = "which_key_ignore",
    ["<M-2>"] = "which_key_ignore",
    ["<M-3>"] = "which_key_ignore",
    ["<M-4>"] = "which_key_ignore",
    ["<M-5>"] = "which_key_ignore",
    ["<M-6>"] = "which_key_ignore",
    ["<M-7>"] = "which_key_ignore",
    ["<M-8>"] = "which_key_ignore",
    ["<M-9>"] = "which_key_ignore",
    ["<M->>"] = "which_key_ignore",
    ["<M-lt>"] = "which_key_ignore",
    ["<M-,>"] = "which_key_ignore",
    ["<M-.>"] = "which_key_ignore",
    ["Y"] = "which_key_ignore",
    ["%"] = "which_key_ignore",
    ["&"] = "which_key_ignore",
    ["\""] = "which_key_ignore",
    ["\'"] = "which_key_ignore",
    ["`"] = "which_key_ignore",
    ["@"] = "which_key_ignore",
}, { prefix = "", })
