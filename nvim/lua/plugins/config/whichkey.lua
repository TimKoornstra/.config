local function setup_which_key()
  local wk = require("which-key")

  wk.setup {
    delay = function(ctx)
      return 750
    end,
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
    icons = {
      breadcrumb = "»",
      separator = "➜",
      group = "+",
    },
    win = {
      wo = {
        winblend = 0,
        position = "bottom",
        margin = { 1, 0, 1, 0 },
      },
      border = "rounded",
      padding = { 1, 1, 1, 1 },
    },
    layout = {
      height = { min = 4, max = 25 },
      width = { min = 20, max = 50 },
      spacing = 3,
      align = "left",
    },
    show_help = true,
  }

  local mappings = {
    { "<leader>D",        desc = "Toggle Git Differences", prefix = "<leader>" },
    { "<leader>c",        group = "Code Action",           prefix = "<leader>" },
    { "<leader>c$",       desc = "Comment to EOL",         prefix = "<leader>" },
    { "<leader>c<space>", desc = "Toggle comment",         prefix = "<leader>" },
    { "<leader>cA",       desc = "Append comment",         prefix = "<leader>" },
    { "<leader>ca",       desc = "Code Action",            prefix = "<leader>" },
    { "<leader>cb",       desc = "Align comment both",     prefix = "<leader>" },
    { "<leader>cc",       desc = "Make comment",           prefix = "<leader>" },
    { "<leader>ci",       desc = "Invert comment",         prefix = "<leader>" },
    { "<leader>cl",       desc = "Align comment left",     prefix = "<leader>" },
    { "<leader>cm",       desc = "Minimal comment",        prefix = "<leader>" },
    { "<leader>cn",       desc = "Nested comment",         prefix = "<leader>" },
    { "<leader>cs",       desc = "Sexy comment",           prefix = "<leader>" },
    { "<leader>cu",       desc = "Uncomment",              prefix = "<leader>" },
    { "<leader>cy",       desc = "Yank comment",           prefix = "<leader>" },
    { "<leader>g",        desc = "General",                prefix = "<leader>" },
    { "<leader>h",        desc = "Git Signs",              prefix = "<leader>" },
    { "<leader>p",        desc = "Toggle Sidebar",         prefix = "<leader>" },
    { "<leader>r",        group = "Rename",                prefix = "<leader>" },
    { "<leader>rn",       desc = "Rename",                 prefix = "<leader>" },
    { "<leader>t",        desc = "Telescope",              prefix = "<leader>" },
  }
  wk.add(mappings)

  wk.add({
    { "<c-w>", desc = "Window",                            prefix = "" },
    { "F",     desc = "Hop to previous character (incl.)", prefix = "" },
    { "K",     desc = "LSP Hover Info",                    prefix = "" },
    { "T",     desc = "Hop to previous character (excl.)", prefix = "" },
    { "[",     desc = "Previous special character",        prefix = "" },
    { "]",     desc = "Next special character",            prefix = "" },
    { "c",     desc = "Change",                            prefix = "" },
    { "d",     desc = "Delete",                            prefix = "" },
    { "f",     desc = "Hop to next character (incl.)",     prefix = "" },
    { "g",     group = "Various search",                   prefix = "" },
    { "gd",    desc = "Go to definition",                  prefix = "" },
    { "gr",    desc = "Grep",                              prefix = "" },
    { "t",     desc = "Hop to next character (excl.)",     prefix = "" },
    { "y",     group = "Add surrounding pair",             prefix = "" },
    { "yS",    desc = "Around a motion (with newline)",    prefix = "" },
    { "ys",    desc = "Around a motion",                   prefix = "" },
    { "z",     desc = "Miscellaneous",                     prefix = "" },
  })

  -- Hide some mappings

  wk.add({
    { "", desc = "<C-L>",  hidden = true },
    { "", desc = "<M-3>",  hidden = true },
    { "", desc = "%",      hidden = true },
    { "", desc = "<M-lt>", hidden = true },
    { "", desc = "&",      hidden = true },
    { "", desc = "<M-8>",  hidden = true },
    { "", desc = "<C-K>",  hidden = true },
    { "", desc = "<M-4>",  hidden = true },
    { "", desc = "<M-6>",  hidden = true },
    { "", desc = "Y",      hidden = true },
    { "", desc = "<M-.>",  hidden = true },
    { "", desc = "<M-5>",  hidden = true },
    { "", desc = "'",      hidden = true },
    { "", desc = "`",      hidden = true },
    { "", desc = "<M-1>",  hidden = true },
    { "", desc = "<M->>",  hidden = true },
    { "", desc = "@",      hidden = true },
    { "", desc = "<C-J>",  hidden = true },
    { "", desc = "<C-H>",  hidden = true },
    { "", desc = "<M-9>",  hidden = true },
    { "", desc = "<M-7>",  hidden = true },
    { "", desc = "<M-,>",  hidden = true },
    { "", desc = "<M-0>",  hidden = true },
    { "", desc = '"',      hidden = true },
    { "", desc = "<M-2>",  hidden = true },
  })
end

setup_which_key()
