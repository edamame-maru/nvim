-- Enable line numbers
vim.opt.number = true

-- Enable 24-bit RGB color in the TUI
vim.opt.termguicolors = true

-- Show cursorline
vim.opt.cursorline = true

-- Plugins
vim.call('plug#begin', '~/.vim/plugged')

vim.call('plug#', 'rebelot/kanagawa.nvim')	-- Add the Kanagawa theme
vim.call('plug#', 'dracula/vim', { as = 'dracula' })   -- Add the Dracula theme
vim.call('plug#', 'jiangmiao/auto-pairs')	-- Auto-Pairs 
vim.call('plug#', 'rust-lang/rust.vim')		-- Rust.vim

vim.call('plug#end')

-- Set colorscheme
vim.cmd('colorscheme dracula')
