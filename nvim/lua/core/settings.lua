local opt, cmd = vim.opt, vim.cmd

-- Visual options
opt.termguicolors = true
opt.relativenumber = true
cmd("set nu rnu")

-- Indentation options
opt.shiftwidth = 4
opt.tabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.softtabstop = 0
