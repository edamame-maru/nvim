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
vim.call('plug#', 'neovim/nvim-lspconfig')	-- LSP 

vim.call('plug#end')

-- Set colorscheme
vim.cmd('colorscheme kanagawa')

-- Setup LSP
require'lspconfig'.rust_analyzer.setup{}

-- Auto-complete on typing
vim.o.completeopt = "menuone,noselect"

-- Trigger completion with <C-Space>
vim.api.nvim_set_keymap('i', '<C-Space>', '<C-x><C-o>', { noremap = true, silent = true })
