require("nvim-tree").setup {
    update_cwd = true,
    disable_netrw = true,
    hijack_netrw = true,
    update_focused_file = {
        enable = false,
    },
    filters = {
        dotfiles = false,
        custom = { ".git", "__pycache__" },
    },
    view = {
        adaptive_size = true,
    },
    git = {
        enable = true,
        ignore = true,
        timeout = 250,
    },
    trash = {
        cmd = "trash",
        require_confirm = true,
    },
}
