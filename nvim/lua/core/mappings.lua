local map = vim.keymap.set

-- Add keymappings
-- Move in windows
map('n', '<C-j>', '<C-W>j')
map('n', '<C-k>', '<C-W>k')
map('n', '<C-h>', '<C-W>h')
map('n', '<C-l>', '<C-W>l')

-- Move up and down with screen
map('n', '<A-j>', '<C-e>j')
map('n', '<A-k>', '<C-y>k')
