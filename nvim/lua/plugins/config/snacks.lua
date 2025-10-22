local function optsWithDesc(opts, desc)
  return vim.tbl_extend("force", opts, { desc = desc })
end

local function setup_snacks()
  require("snacks").setup({
    bigfile = { enabled = true },
    dashboard = { enabled = false },
    indent = { enabled = false },
    input = { enabled = true },
    notifier = {
      enabled = true,
      timeout = 3000,
    },
    quickfile = { enabled = true },
    scroll = { enabled = false },
    statuscolumn = { enabled = true },
    words = { enabled = true },
    styles = {
      notification = {
        wo = { wrap = true } -- Wrap notifications
      },
    },
  })

  -- Key mappings
  local map = vim.api.nvim_set_keymap
  local opts = { noremap = true, silent = true }
  map("n", "<leader>z", "<cmd>lua Snacks.zen()<CR>", optsWithDesc(opts, "Toggle zen mode"))
  map("n", "<leader>Z", "<cmd>lua Snacks.zen.zoom()<CR>", optsWithDesc(opts, "Zoom zen mode"))
  map("n", "<leader>.", "<cmd>lua Snacks.scratch()<CR>", optsWithDesc(opts, "Create scratch buffer"))
  map("n", "<leader>S", "<cmd>lua Snacks.scratch.select()<CR>", optsWithDesc(opts, "Select scratch buffer"))
  map("n", "<leader>cR", "<cmd>lua Snacks.rename.rename_file()<CR>", optsWithDesc(opts, "Rename file"))
  map("n", "<C-/>", "<cmd>lua Snacks.terminal()<CR>", optsWithDesc(opts, "Open terminal"))
  map("n", "]]", "<cmd>lua Snacks.words.jump(vim.v.count1)<CR>", optsWithDesc(opts, "Next word occurrence"))
  map("t", "]]", "<cmd>lua Snacks.words.jump(vim.v.count1)<CR>", optsWithDesc(opts, "Next word occurrence"))
  map("n", "[[", "<cmd>lua Snacks.words.jump(-vim.v.count1)<CR>", optsWithDesc(opts, "Previous word occurrence"))
  map("t", "[[", "<cmd>lua Snacks.words.jump(-vim.v.count1)<CR>", optsWithDesc(opts, "Previous word occurrence"))

  -- Setup toggle mappings
  Snacks.toggle.option("spell", { name = "Spelling" }):map("<leader>us", { desc = "Toggle Spelling" })
  Snacks.toggle.option("wrap", { name = "Wrap" }):map("<leader>uw", { desc = "Toggle Wrap" })
  Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>uL",
    { desc = "Toggle Relative Numbers" })
  Snacks.toggle.diagnostics():map("<leader>ud", { desc = "Toggle Diagnostics" })
  Snacks.toggle.line_number():map("<leader>ul", { desc = "Toggle Line Numbers" })
  Snacks.toggle.option("conceallevel", { off = 0, on = vim.o.conceallevel > 0 and vim.o.conceallevel or 2 }):map(
    "<leader>uc", { desc = "Toggle Conceal" })
  Snacks.toggle.treesitter():map("<leader>uT", { desc = "Toggle Treesitter" })
  Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>ub",
    { desc = "Toggle Dark Background" })
  Snacks.toggle.inlay_hints():map("<leader>uh", { desc = "Toggle Inlay Hints" })
  Snacks.toggle.indent():map("<leader>ug", { desc = "Toggle Indentation Guides" })
  Snacks.toggle.dim():map("<leader>uD", { desc = "Toggle Dim" })
end

setup_snacks()
