local opt, cmd = vim.opt, vim.cmd

-- Visual options
opt.termguicolors = true
opt.relativenumber = true
cmd("set nu rnu")

-- Indentation options
opt.shiftwidth = 2
opt.tabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.softtabstop = 0

-- Filetype-specific settings
vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function()
        vim.opt_local.shiftwidth = 4 -- Use 4 spaces for autoindent
        vim.opt_local.tabstop = 4    -- Use 4 spaces for tabs
    end,
})
