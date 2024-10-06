require("avante_lib").load()
require('avante').setup({
    provider = "claude",
    auto_suggestions_provider = "copilot",
    claude = {
        endpoint = "https://api.anthropic.com",
        model = "claude-3-5-sonnet-20240620",
        temperature = 0,
        max_tokens = 4096,
    },
    behaviour = {
        auto_suggestions = false,
        auto_set_highlight_group = true,
        auto_set_keymaps = true,
        auto_apply_diff_after_generation = false,
        support_paste_from_clipboard = false,
    },
    mappings = {
        diff = {
            ours = "co",
            theirs = "ct",
            all_theirs = "ca",
            both = "cb",
            cursor = "cc",
            next = "]x",
            prev = "[x",
        },
        suggestion = {
            accept = "<M-l>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
        },
        jump = {
            next = "]]",
            prev = "[[",
        },
        submit = {
            normal = "<CR>",
            insert = "<C-s>",
        },
        sidebar = {
            switch_windows = "<Tab>",
            reverse_switch_windows = "<S-Tab>",
        },
    },
    hints = { enabled = true },
    windows = {
        position = "right",
        wrap = true,
        width = 30,
        sidebar_header = {
            align = "center",
            rounded = true,
        },
    },
    highlights = {
        diff = {
            current = "DiffText",
            incoming = "DiffAdd",
        },
    },
    diff = {
        autojump = true,
        list_opener = "copen",
    },
})
