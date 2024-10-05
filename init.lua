-- Enable line numbers
vim.opt.number = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Show cursorline
vim.opt.cursorline = true

-- Plugins
vim.call('plug#begin', '~/.vim/plugged')

vim.call('plug#', 'rebelot/kanagawa.nvim')	-- Colorscheme
vim.call('plug#', 'jiangmiao/auto-pairs')	-- Auto-Pairs 

vim.call('plug#end')

-- Set colorscheme
vim.cmd('colorscheme kanagawa')
